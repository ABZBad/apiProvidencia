<?php
header('Content-Type: application/json; charset=utf-8');

// 1. Configuración de la base de datos

include 'config.php'; // o require 'config.php';



// 3. Headers CORS
header("Access-Control-Allow-Origin: " . ALLOWED_ORIGIN);
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");


function logAction($message, $level='INFO', $context=[]){
    $logEntry= sprintf(
        "[%s] %s: %s %s\n",
        date('Y-m-d H:i:s'),
        $level,
        $message,
        !empty($context) ? json_encode($context) :''
    );

    file_put_contents(LOG_FILE, $logEntry, FILE_APPEND);
    if(php_sapi_name() === 'cli' || isset($_GET['debug'])){
        error_log($logEntry);
    }

}

// 4. Conexión a MySQL con manejo de errores
function getDBConnection() {
    try {

        logAction("intentando conexion a mysql","DEBUG",
            ['host'=> DB_HOST, 'user' => DB_USER]
        );
        $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        
        if ($conn->connect_error) {
            throw new Exception('Error de conexión a la base de datos: ' . $conn->connect_error);
        }
        
        $conn->set_charset("utf8mb4");
        return $conn;
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 500);
    }
}

// 5. Función para crear hash SHA256
function crearPasswordSHA256($password) {
    if (strlen($password) < 8) {
        throw new Exception("La contraseña debe tener al menos 8 caracteres");
    }
    return hash('sha256', $password);
}

// 6. Funciones JWT
function generateJWT($payload) {
    $header = json_encode(['typ' => 'JWT', 'alg' => JWT_ALGORITHM]);
    $payload['iat'] = time();
    $payload['exp'] = time() + 3600; // 1 hora de expiración
    $payload = json_encode($payload);
    
    $base64UrlHeader = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($header));
    $base64UrlPayload = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($payload));
    
    $signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, JWT_SECRET, true);
    $base64UrlSignature = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));
    
    return $base64UrlHeader . "." . $base64UrlPayload . "." . $base64UrlSignature;
}

function validateJWT($jwt) {
    try {
        $tokenParts = explode('.', $jwt);
        if (count($tokenParts) !== 3) return false;
        
        $signature = hash_hmac('sha256', $tokenParts[0] . "." . $tokenParts[1], JWT_SECRET, true);
        $base64UrlSignature = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));
        
        if ($base64UrlSignature !== $tokenParts[2]) {
            return false;
        }
        
        $payload = json_decode(base64_decode(str_replace(['-', '_'], ['+', '/'], $tokenParts[1])));
        
        if (isset($payload->exp) && $payload->exp < time()) {
            return false;
        }
        
        return $payload;
    } catch (Exception $e) {
        return false;
    }
}

// 7. Función para enviar respuestas
function sendResponse($success, $data = null, $message = '', $statusCode = 200) {
    http_response_code($statusCode);
    echo json_encode([
        'success' => $success,
        'data' => $data,
        'message' => $message,
        'status' => $statusCode
    ], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
    exit;
}

// 8. Manejar preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    exit(0);
}

// 9. Validar origen permitido
if (isset($_SERVER['HTTP_ORIGIN']) && $_SERVER['HTTP_ORIGIN'] !== ALLOWED_ORIGIN) {
    sendResponse(false, null, 'Acceso no permitido desde este origen', 403);
}

// ==============================================
// ENDPOINTS
// ==============================================

// A. Endpoint para crear password
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['action']) && $_GET['action'] === 'crear-password') {
    try {
        $input = json_decode(file_get_contents('php://input'), true);
        
        if (empty($input['password'])) {
            throw new Exception('El campo password es requerido');
        }
        
        $passwordHash = crearPasswordSHA256($input['password']);
        
        sendResponse(true, [
            'password_sha256' => $passwordHash
        ], 'Password creado exitosamente');
        
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 400);
    }
}

// B. Endpoint de login
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['action']) && $_GET['action'] === 'login') {
    logAction("incio de solicitud de login", "INFO");
    try {
        $input = json_decode(file_get_contents('php://input'), true);
        
        if (empty($input['username']) || empty($input['password'])) {
            throw new Exception('Usuario y contraseña requeridos');
        }
        
        $conn = getDBConnection();
        $passwordHash = crearPasswordSHA256($input['password']);
        logAction("preparando consulta", "DEBUG");
        $stmt = $conn->prepare("SELECT id, nombre, rol FROM usuarios WHERE username = ? AND password = ?");
        $stmt->bind_param("ss", $input['username'], $passwordHash);
        $stmt->execute();

        $stmt->store_result(); // Necesario para usar num_rows
        logAction("preparando consulta", '$store_result');
            
        if ($stmt->num_rows !== 1) {
            throw new Exception('Credenciales inválidas');
        }
        
        $stmt -> bind_result( $id, $nombre,$rol );
        $stmt->fetch();
        $token = generateJWT([
            'sub' => $id,
            'name' => $nombre,
            'role' => $rol
        ]);
        
        sendResponse(true, [
            'token' => $token,
            'user' => [
                'sub' => $id,
                'name' => $nombre,
                'role' => $rol
            ]
        ], 'Autenticación exitosa');
        
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 401);
    }
}

// C. Validar JWT para endpoints protegidos
$protectedActions = ['productos', 'tallas', 'colores', 'categorias'];
if (isset($_GET['action']) && in_array($_GET['action'], $protectedActions)) {
    try {
        $headers = getallheaders();
        $authHeader = $headers['Authorization'] ?? '';
        
        if (!preg_match('/Bearer\s(\S+)/', $authHeader, $matches)) {
            throw new Exception('Token no proporcionado');
        }
        
        $decoded = validateJWT($matches[1]);
        if (!$decoded) {
            throw new Exception('Token inválido o expirado');
        }
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 401);
    }
}

// D. Endpoint para obtener productos
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'productos') {
    try {
        $conn = getDBConnection();
        
        $query = "SELECT p.*, 
                         GROUP_CONCAT(DISTINCT c.nombre) as categorias,
                         GROUP_CONCAT(DISTINCT t.nombre) as tallas,
                         GROUP_CONCAT(DISTINCT co.nombre) as colores
                  FROM productos p
                  LEFT JOIN producto_categoria pc ON p.id = pc.producto_id
                  LEFT JOIN categorias c ON pc.categoria_id = c.id
                  LEFT JOIN producto_talla pt ON p.id = pt.producto_id
                  LEFT JOIN tallas t ON pt.talla_id = t.id
                  LEFT JOIN producto_color pco ON p.id = pco.producto_id
                  LEFT JOIN colores co ON pco.color_id = co.id
                  GROUP BY p.id";
        
        $result = $conn->query($query);
        $productos = [];
        
        while ($row = $result->fetch_assoc()) {
            $row['imagenes'] = explode(',', $row['imagenes']);
            $row['categorias'] = array_filter(explode(',', $row['categorias']));
            $row['tallas'] = array_filter(explode(',', $row['tallas']));
            $row['colores'] = array_filter(explode(',', $row['colores']));
            $productos[] = $row;
        }
        
        sendResponse(true, $productos);
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 500);
    }
}

// E. Endpoint para obtener tallas
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'tallas') {
    try {
        $conn = getDBConnection();
        $result = $conn->query("SELECT * FROM tallas");
        $tallas = $result->fetch_all(MYSQLI_ASSOC);
        sendResponse(true, $tallas);
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 500);
    }
}

// F. Endpoint para obtener colores
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'colores') {
    try {
        $conn = getDBConnection();
        $result = $conn->query("SELECT * FROM colores");
        $colores = $result->fetch_all(MYSQLI_ASSOC);
        sendResponse(true, $colores);
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 500);
    }
}

// G. Endpoint para obtener categorías
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['action']) && $_GET['action'] === 'categorias') {
    try {
        $conn = getDBConnection();
        $result = $conn->query("SELECT * FROM categorias");
        $categorias = $result->fetch_all(MYSQLI_ASSOC);
        sendResponse(true, $categorias);
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 500);
    }
}

// H. Endpoint no encontrado
sendResponse(false, null, 'Endpoint no encontrado', 404);
?>
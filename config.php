<?php
// Configuración de la base de datos
define('DB_HOST', 'localhost');
define('DB_USER', 'usuario');
define('DB_PASS', 'contraseña');
define('DB_NAME', 'nombre_basedatos');

// Configuración JWT
define('JWT_SECRET', 'tu_clave_secreta_super_segura_123!');
define('JWT_ALGORITHM', 'HS256');

// Configuración CORS
define('ALLOWED_ORIGIN', 'https://porve.com');

// Headers CORS
header("Access-Control-Allow-Origin: " . ALLOWED_ORIGIN);
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Content-Type: application/json; charset=UTF-8");

// Conexión a MySQL
function getDBConnection() {
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    
    if ($conn->connect_error) {
        sendResponse(500, ['error' => 'Error de conexión a la base de datos']);
    }
    
    return $conn;
}

// Función para enviar respuestas JSON
function sendResponse($statusCode, $data) {
    http_response_code($statusCode);
    echo json_encode($data);
    exit;
}

// Verificar origen permitido
if (isset($_SERVER['HTTP_ORIGIN']) && $_SERVER['HTTP_ORIGIN'] !== ALLOWED_ORIGIN) {
    sendResponse(403, ['error' => 'Acceso no permitido desde este origen']);
}

// Manejar preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    exit(0);
}

// Cargar autoloader para JWT
require __DIR__ . '/vendor/autoload.php';
use Firebase\JWT\JWT;
use Firebase\JWT\Key;
?>
<?php
header('Content-Type: application/json; charset=utf-8');


define('JWT_ALGORITHM', 'HS256');


// 5. Función para enviar respuestas JSON
function sendResponse($success, $data = null, $message = '', $statusCode = 200) {
    http_response_code($statusCode);
    echo json_encode([
        'success' => $success,
        'data' => $data,
        'message' => $message
    ], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
    exit;
}

function crearPasswordSHA256($password) {
    // Validación básica de la contraseña
    if (strlen($password) < 8) {
        throw new Exception("La contraseña debe tener al menos 8 caracteres");
    }
    
    // Crear hash SHA256
    return hash('sha256', $password);
}


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['action']) && $_GET['action'] === 'crear-password') {
    try {
        $input = json_decode(file_get_contents('php://input'), true);
        
        if (empty($input['password'])) {
            sendResponse(false, null, 'El campo password es requerido', 400);
        }
        
        $passwordHash = crearPasswordSHA256($input['password']);
        
        sendResponse(true, [
            'password_plain' => $input['password'], // Solo para demostración, no hacer en producción
            'password_sha256' => $passwordHash
        ], 'Password creado exitosamente');
        
    } catch (Exception $e) {
        sendResponse(false, null, $e->getMessage(), 400);
    }
}
?>
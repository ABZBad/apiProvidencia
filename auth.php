<?php
require_once 'config.php';

function generateJWT($userId) {
    $issuedAt = time();
    $expirationTime = $issuedAt + 3600; // Token válido por 1 hora
    
    $payload = [
        'iat' => $issuedAt,
        'exp' => $expirationTime,
        'sub' => $userId,
        'iss' => 'porve.com'
    ];
    
    return JWT::encode($payload, JWT_SECRET, JWT_ALGORITHM);
}

function validateJWT() {
    $headers = getallheaders();
    
    if (!isset($headers['Authorization'])) {
        sendResponse(401, ['error' => 'Token no proporcionado']);
    }
    
    $authHeader = $headers['Authorization'];
    $token = str_replace('Bearer ', '', $authHeader);
    
    try {
        $decoded = JWT::decode($token, new Key(JWT_SECRET, JWT_ALGORITHM));
        return $decoded->sub;
    } catch (Exception $e) {
        sendResponse(401, ['error' => 'Token inválido: ' . $e->getMessage()]);
    }
}
?>
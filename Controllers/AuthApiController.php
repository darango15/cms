<?php

declare(strict_types=1);

namespace Controllers;

use Core\Controller;
use Core\Database;

class AuthApiController extends Controller
{
    /**
     * POST /api/login
     */
    public function login()
    {
        // Obtener datos del cuerpo de la petición (JSON)
        $json = file_get_contents('php://input');
        $data = json_decode($json, true);

        $email    = $data['email'] ?? '';
        $password = $data['password'] ?? '';

        if (empty($email) || empty($password)) {
            $this->jsonResponse(['status' => 'error', 'message' => 'Email y contraseña requeridos'], 400);
        }

        $db = Database::getInstance();
        // Cambiado de queryOne a fetchOne (que es el método real en el CMS)
        $user = $db->fetchOne("SELECT * FROM users WHERE email = ? LIMIT 1", [$email]);

        // Verificar usuario y contraseña
        if (!$user || !password_verify($password, $user['password'])) {
            $this->jsonResponse(['status' => 'error', 'message' => 'Credenciales inválidas'], 401);
        }

        // Verificar rol (solo estudiantes y profesores)
        $allowedRoles = ['student', 'teacher', 'admin'];
        if (!in_array($user['role'], $allowedRoles)) {
            $this->jsonResponse(['status' => 'error', 'message' => 'No tienes permiso para acceder al LMS'], 403);
        }

        // Generar un token (simulado)
        $token = bin2hex(random_bytes(32));
        
        $this->jsonResponse([
            'status' => 'success',
            'token'  => $token,
            'user'   => [
                'id'    => $user['id'],
                'name'  => $user['name'],
                'email' => $user['email'],
                'role'  => $user['role']
            ]
        ]);
    }

    private function jsonResponse(array $data, int $code = 200)
    {
        header('Content-Type: application/json');
        http_response_code($code);
        echo json_encode($data);
        exit;
    }
}

<?php
/**
 * Sembrar usuarios de prueba (estudiante y profesor).
 * Uso: php scripts/seed_test_users.php
 */
require_once __DIR__ . '/../vendor/autoload.php';

use Core\Config;
use Core\Database;

Config::load(__DIR__ . '/../config/config.php');
$db = Database::getInstance();

$users = [
    [
        'name'      => 'Estudiante de Prueba',
        'email'     => 'estudiante@prueba.com',
        'password'  => password_hash('password123', PASSWORD_BCRYPT),
        'role'      => 'student',
        'is_active' => 1,
    ],
    [
        'name'      => 'Profesor de Prueba',
        'email'     => 'profesor@prueba.com',
        'password'  => password_hash('password123', PASSWORD_BCRYPT),
        'role'      => 'teacher',
        'is_active' => 1,
    ],
];

foreach ($users as $user) {
    $exists = $db->fetchOne("SELECT id FROM users WHERE email = ?", [$user['email']]);
    if (!$exists) {
        $db->query(
            "INSERT INTO users (name, email, password, role, is_active, created_at) VALUES (?, ?, ?, ?, ?, NOW())",
            [$user['name'], $user['email'], $user['password'], $user['role'], $user['is_active']]
        );
        echo "Usuario creado: {$user['email']} ({$user['role']})\n";
    } else {
        echo "Ya existe: {$user['email']}\n";
    }
}

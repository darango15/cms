<?php

namespace Controllers;

use Core\Models\User;

class AuthController
{
    private $user;

    public function __construct()
    {
        $this->user = new User();
    }

    public function showLogin()
    {
        $view = new \Core\View();
        $view->render('public/views/login', ['title' => 'Login'], 'public/views/layout');
    }

    public function login()
    {
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            header('Location: /login');
            exit;
        }

        $email = $_POST['email'] ?? '';
        $password = $_POST['password'] ?? '';

        $user = $this->user->verifyPassword($email, $password);

        if ($user) {
            session_start();
            $_SESSION['user_logged_in'] = true;
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['name'];
            $_SESSION['user_email'] = $user['email'];
            $_SESSION['user_role'] = $user['role'];

            // Update last login
            $this->user->updateLastLogin($user['id']);

            // Redirect to my-account
            header('Location: /my-account');
            exit;
        } else {
            // Login failed
            $_SESSION['login_error'] = 'Email o contraseña incorrectos';
            header('Location: /login');
            exit;
        }
    }

    public function logout()
    {
        session_start();
        session_destroy();
        header('Location: /');
        exit;
    }

    public function showRegister()
    {
        $view = new \Core\View();
        $view->render('public/views/register', ['title' => 'Register'], 'public/views/layout');
    }

    public function register()
    {
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            header('Location: /register');
            exit;
        }

        try {
            // Validate input
            $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
            if (!$email) {
                throw new \Exception('Email inválido');
            }

            // Check if user exists
            if ($this->user->findByEmail($email)) {
                throw new \Exception('El email ya está registrado');
            }

            // Create user
            $this->user->create([
                'email' => $email,
                'password' => $_POST['password'],
                'name' => $_POST['name']
            ]);

            // Auto login
            $user = $this->user->findByEmail($email);
            
            session_start();
            $_SESSION['user_logged_in'] = true;
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['name'];
            $_SESSION['user_email'] = $user['email'];
            $_SESSION['user_role'] = $user['role'];

            header('Location: /my-account');
            exit;

        } catch (\Exception $e) {
            $_SESSION['register_error'] = $e->getMessage();
            header('Location: /register');
            exit;
        }
    }
}

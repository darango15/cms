<?php

ob_start();

define('BASE_PATH', dirname(__DIR__));

require_once BASE_PATH . '/vendor/autoload.php';
require_once BASE_PATH . '/Controllers/AuthController.php';
require_once BASE_PATH . '/Controllers/AccountController.php';

use Core\Application;

$app    = new Application();
$router = $app->getRouter();

$host  = $_SERVER['HTTP_HOST'] ?? '';
$isLms = strpos($host, 'elearning.') !== false;
define('IS_LMS', $isLms);

if (IS_LMS) {
    $lmsFile = BASE_PATH . '/routes/lms.php';
    if (file_exists($lmsFile)) {
        $lmsRoutes = require $lmsFile;
        $lmsRoutes($router);
    }
} else {
    $webRoutes = require BASE_PATH . '/routes/web.php';
    $webRoutes($router);

    $adminRoutes = require BASE_PATH . '/routes/admin.php';
    $adminRoutes($router);

    $apiFile = BASE_PATH . '/routes/api.php';
    if (file_exists($apiFile)) {
        $apiRoutes = require $apiFile;
        $apiRoutes($router);
    }
}

$app->run();

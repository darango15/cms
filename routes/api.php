<?php

/**
 * API Routes - Versión 1
 */
return function($router) {
    
    // Raíz del API para pruebas
    $router->get('/api', function() {
        header('Content-Type: application/json');
        echo json_encode([
            'name'    => 'PAMEL CMS API',
            'version' => '1.0.0',
            'status'  => 'running'
        ]);
        exit;
    }, 'api.index');

    // Agrupamos bajo /api/v1
    $router->post('/api/v1/login', 'Controllers\AuthApiController@login', 'api.v1.login');
    $router->get('/api/v1/courses', 'Plugins\Elearning\Controllers\CoursesApiController@index', 'api.v1.courses');
    $router->get('/api/v1/categories', 'Plugins\Elearning\Controllers\CategoriesApiController@index', 'api.v1.categories');
    $router->get('/api/v1/courses/count', 'Controllers\StatsApiController@coursesCount', 'api.v1.stats.courses');
    $router->get('/api/v1/users/count', 'Controllers\StatsApiController@usersCount', 'api.v1.stats.users');
};

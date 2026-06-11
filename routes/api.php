<?php

/**
 * API Routes — v1
 * All routes are prefixed under /api/v1/
 * Auth: POST /api/v1/login returns a Bearer token.
 *       Protected routes require: Authorization: Bearer <token>
 */
return function ($router) {

    // ── Status ────────────────────────────────────────────────────────────────
    $router->get('/api', function () {
        header('Content-Type: application/json');
        echo json_encode([
            'name'    => 'PAMEL CMS API',
            'version' => '1.0.0',
            'status'  => 'running',
        ]);
        exit;
    }, 'api.index');

    // ── Auth ──────────────────────────────────────────────────────────────────
    $router->post('/api/v1/login',           'Controllers\AuthApiController@login',    'api.v1.login');
    $router->post('/api/v1/auth/register',   'Controllers\AuthApiController@register', 'api.v1.auth.register');
    $router->get('/api/v1/auth/me',          'Controllers\AuthApiController@me',       'api.v1.auth.me');

    // ── Courses ───────────────────────────────────────────────────────────────
    $router->get('/api/v1/courses',                          'Plugins\Elearning\Controllers\CoursesApiController@index',           'api.v1.courses');
    $router->get('/api/v1/courses/count',                    'Plugins\Elearning\Controllers\CoursesApiController@count',           'api.v1.courses.count');
    $router->get('/api/v1/courses/slug/:slug',               'Plugins\Elearning\Controllers\CoursesApiController@bySlug',          'api.v1.courses.slug');
    $router->get('/api/v1/courses/:id',                      'Plugins\Elearning\Controllers\CoursesApiController@show',            'api.v1.courses.show');
    $router->get('/api/v1/courses/:id/content',              'Plugins\Elearning\Controllers\CoursesApiController@content',         'api.v1.courses.content');
    $router->get('/api/v1/courses/:id/check-enrollment',     'Plugins\Elearning\Controllers\CoursesApiController@checkEnrollment', 'api.v1.courses.check-enrollment');

    // ── Categories ────────────────────────────────────────────────────────────
    $router->get('/api/v1/categories',       'Plugins\Elearning\Controllers\CategoriesApiController@index', 'api.v1.categories');

    // ── Enrollments ───────────────────────────────────────────────────────────
    $router->post('/api/v1/enrollments',                     'Plugins\Elearning\Controllers\EnrollmentsApiController@enroll',         'api.v1.enrollments.store');
    $router->get('/api/v1/student/:studentId/courses',       'Plugins\Elearning\Controllers\EnrollmentsApiController@studentCourses', 'api.v1.student.courses');

    // ── Lessons ───────────────────────────────────────────────────────────────
    $router->get('/api/v1/lessons/:id',              'Plugins\Elearning\Controllers\LessonsApiController@show',     'api.v1.lessons.show');
    $router->post('/api/v1/lessons/:id/complete',    'Plugins\Elearning\Controllers\LessonsApiController@complete', 'api.v1.lessons.complete');

    // ── Users ─────────────────────────────────────────────────────────────────
    $router->get('/api/v1/users/count',      'Controllers\UsersApiController@count', 'api.v1.users.count');
    $router->get('/api/v1/users/:id',        'Controllers\UsersApiController@show',  'api.v1.users.show');

};

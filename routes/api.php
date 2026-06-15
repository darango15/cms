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
    $router->get('/api/v1/enrollments/count',                'Plugins\Elearning\Controllers\EnrollmentsApiController@count',           'api.v1.enrollments.count');
    $router->get('/api/v1/student/:studentId/courses',                              'Plugins\Elearning\Controllers\EnrollmentsApiController@studentCourses',       'api.v1.student.courses');
    $router->get('/api/v1/student/:studentId/courses/:courseId/progress',           'Plugins\Elearning\Controllers\EnrollmentsApiController@studentCourseProgress', 'api.v1.student.courses.progress');

    // ── Lessons ───────────────────────────────────────────────────────────────
    $router->get('/api/v1/courses/:id/lessons',           'Plugins\Elearning\Controllers\LessonsApiController@byCourse', 'api.v1.courses.lessons');
    $router->get('/api/v1/courses/:id/lessons/previous',  'Plugins\Elearning\Controllers\LessonsApiController@previous', 'api.v1.courses.lessons.previous');
    $router->get('/api/v1/lessons/:id',              'Plugins\Elearning\Controllers\LessonsApiController@show',     'api.v1.lessons.show');
    $router->post('/api/v1/lessons/:id/complete',    'Plugins\Elearning\Controllers\LessonsApiController@complete', 'api.v1.lessons.complete');
    $router->post('/api/v1/lessons/:id/toggle',      'Plugins\Elearning\Controllers\LessonsApiController@toggle',   'api.v1.lessons.toggle');
    $router->post('/api/v1/lessons/:id/delete',      'Plugins\Elearning\Controllers\LessonsApiController@destroy',  'api.v1.lessons.delete');

    // ── Quizzes ───────────────────────────────────────────────────────────────
    $router->post('/api/v1/quizzes',                                    'Plugins\Elearning\Controllers\QuizzesApiController@store',            'api.v1.quizzes.store');
    $router->get('/api/v1/quizzes/:id/questions',                       'Plugins\Elearning\Controllers\QuizzesApiController@showWithQuestions', 'api.v1.quizzes.questions');
    $router->get('/api/v1/quizzes/:id/attempts/best',                   'Plugins\Elearning\Controllers\QuizzesApiController@bestAttempt',       'api.v1.quizzes.attempts.best');
    $router->get('/api/v1/quizzes/:id',                                 'Plugins\Elearning\Controllers\QuizzesApiController@show',              'api.v1.quizzes.show');
    $router->post('/api/v1/quizzes/:id/update',                         'Plugins\Elearning\Controllers\QuizzesApiController@update',            'api.v1.quizzes.update');
    $router->post('/api/v1/quizzes/:id/delete',                         'Plugins\Elearning\Controllers\QuizzesApiController@destroy',           'api.v1.quizzes.delete');
    $router->post('/api/v1/quizzes/:id/start',                          'Plugins\Elearning\Controllers\QuizzesApiController@startAttempt',      'api.v1.quizzes.start');
    $router->post('/api/v1/quizzes/:id/attempts/:attemptId/grade',      'Plugins\Elearning\Controllers\QuizzesApiController@gradeAttempt',      'api.v1.quizzes.grade');
    $router->post('/api/v1/quizzes/:id/questions',                      'Plugins\Elearning\Controllers\QuizzesApiController@storeQuestion',     'api.v1.quizzes.questions.store');
    $router->get('/api/v1/quiz-attempts/:attemptId',                    'Plugins\Elearning\Controllers\QuizzesApiController@attempt',           'api.v1.quiz-attempts.show');

    // ── Users ─────────────────────────────────────────────────────────────────
    $router->get('/api/v1/users/count',      'Controllers\UsersApiController@count', 'api.v1.users.count');
    $router->get('/api/v1/users/:id',        'Controllers\UsersApiController@show',  'api.v1.users.show');

};

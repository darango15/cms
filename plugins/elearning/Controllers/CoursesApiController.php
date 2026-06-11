<?php

declare(strict_types=1);

namespace Plugins\Elearning\Controllers;

use Core\Controller;
use Core\ApiToken;
use Plugins\Elearning\Models\Course;
use Plugins\Elearning\Models\Enrollment;

class CoursesApiController extends Controller
{
    private Course $courseModel;
    private Enrollment $enrollmentModel;

    public function __construct()
    {
        parent::__construct();
        $this->courseModel     = new Course();
        $this->enrollmentModel = new Enrollment();
    }

    /**
     * GET /api/v1/courses
     */
    public function index()
    {
        $page       = max(1, (int) ($_GET['page'] ?? 1));
        $perPage    = min(50, max(1, (int) ($_GET['perPage'] ?? 12)));
        $categoryId = isset($_GET['category_id']) ? (int) $_GET['category_id'] : null;
        $status     = $_GET['status'] ?? 'published';

        if ($status !== 'published') {
            $status = 'published';
        }

        $result = $this->courseModel->published($page, $perPage, $categoryId);

        $this->apiResponse(['status' => 'success', 'data' => $result]);
    }

    /**
     * GET /api/v1/courses/{id}
     */
    public function show($id)
    {
        $course = $this->courseModel->find((int) $id);
        if (!$course) {
            $this->apiResponse(['status' => 'error', 'message' => 'Curso no encontrado'], 404);
        }
        $this->apiResponse(['status' => 'success', 'data' => $course]);
    }

    /**
     * GET /api/v1/courses/slug/{slug}
     */
    public function bySlug($slug)
    {
        $course = $this->courseModel->findBySlug($slug);
        if (!$course) {
            $this->apiResponse(['status' => 'error', 'message' => 'Curso no encontrado'], 404);
        }
        $this->apiResponse(['status' => 'success', 'data' => $course]);
    }

    /**
     * GET /api/v1/courses/{id}/content
     * Returns lessons and quizzes for a course.
     */
    public function content($id)
    {
        $course = $this->courseModel->find((int) $id);
        if (!$course) {
            $this->apiResponse(['status' => 'error', 'message' => 'Curso no encontrado'], 404);
        }

        $content = $this->courseModel->getLessonsAndQuizzes((int) $id);
        $this->apiResponse(['status' => 'success', 'data' => $content]);
    }

    /**
     * GET /api/v1/courses/{id}/check-enrollment?user_id=X
     */
    public function checkEnrollment($id)
    {
        $userId = ApiToken::fromRequest();
        if ($userId === false) {
            $userId = isset($_GET['user_id']) ? (int) $_GET['user_id'] : null;
        }

        if (!$userId) {
            $this->apiResponse(['status' => 'success', 'enrolled' => false]);
        }

        $enrolled = $this->enrollmentModel->isEnrolled((int) $userId, (int) $id);
        $this->apiResponse(['status' => 'success', 'enrolled' => $enrolled]);
    }

    /**
     * GET /api/v1/courses/count
     */
    public function count()
    {
        $total = $this->courseModel->countPublished();
        $this->apiResponse(['status' => 'success', 'count' => $total]);
    }

    private function apiResponse(array $data, int $code = 200): void
    {
        header('Content-Type: application/json');
        http_response_code($code);
        echo json_encode($data);
        exit;
    }
}

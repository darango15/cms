<?php

declare(strict_types=1);

namespace Plugins\Elearning\Controllers;

use Core\Controller;
use Core\ApiToken;
use Plugins\Elearning\Models\Lesson;

class LessonsApiController extends Controller
{
    private Lesson $lessonModel;

    public function __construct()
    {
        parent::__construct();
        $this->lessonModel = new Lesson();
    }

    /**
     * GET /api/v1/lessons/{id}
     * Returns lesson data with completion status for the authenticated user.
     */
    public function show($id)
    {
        $lesson = $this->lessonModel->find((int) $id);
        if (!$lesson) {
            $this->apiResponse(['status' => 'error', 'message' => 'Lección no encontrada'], 404);
        }

        $userId    = ApiToken::fromRequest();
        $completed = $userId ? $this->lessonModel->isCompleted($userId, (int) $id) : false;

        $lesson['completed'] = $completed;
        $this->apiResponse(['status' => 'success', 'data' => $lesson]);
    }

    /**
     * POST /api/v1/lessons/{id}/complete
     * Marks a lesson as completed for the authenticated user.
     */
    public function complete($id)
    {
        $userId = ApiToken::fromRequest();
        if ($userId === false) {
            $this->apiResponse(['status' => 'error', 'message' => 'Autenticación requerida'], 401);
        }

        $lesson = $this->lessonModel->find((int) $id);
        if (!$lesson) {
            $this->apiResponse(['status' => 'error', 'message' => 'Lección no encontrada'], 404);
        }

        $this->lessonModel->markCompleted($userId, (int) $id);
        $this->apiResponse(['status' => 'success', 'message' => 'Lección marcada como completada']);
    }

    private function apiResponse(array $data, int $code = 200): void
    {
        header('Content-Type: application/json');
        http_response_code($code);
        echo json_encode($data);
        exit;
    }
}

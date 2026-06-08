<?php

declare(strict_types=1);

namespace Plugins\Elearning\Controllers;

use App\Core\Controller;
use Plugins\Elearning\Models\Course;

class CoursesApiController extends Controller
{
    /**
     * GET /api/courses
     * Devuelve la lista de cursos publicados.
     */
    public function index()
    {
        $courseModel = new Course();
        
        // Obtenemos los cursos (usando el modelo que ya existe en el CMS)
        $courses = $courseModel->all();

        // Devolvemos JSON puro
        header('Content-Type: application/json');
        echo json_encode([
            'status' => 'success',
            'data'   => $courses
        ]);
        exit;
    }
}

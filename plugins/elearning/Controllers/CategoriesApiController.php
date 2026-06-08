<?php

declare(strict_types=1);

namespace Plugins\Elearning\Controllers;

use App\Core\Controller;
use App\Core\Database;

class CategoriesApiController extends Controller
{
    /**
     * GET /api/categories
     */
    public function index()
    {
        $db = Database::getInstance();
        
        // Consulta simple para traer categorías y conteo de cursos
        $categories = $db->query("
            SELECT c.*, 
                   (SELECT COUNT(*) FROM lms_courses WHERE category_id = c.id) as course_count
            FROM lms_categories c
            ORDER BY c.name ASC
        ");

        header('Content-Type: application/json');
        echo json_encode([
            'status' => 'success',
            'data'   => $categories
        ]);
        exit;
    }
}

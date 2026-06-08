<?php

namespace Plugins\Elearning\Controllers;

use Core\View;
use Plugins\Elearning\Models\Enrollment;
use Plugins\Elearning\Models\Course;

class AdminEnrollmentController extends BaseController
{
    private $enrollmentModel;
    private $courseModel;

    public function __construct()
    {
        parent::__construct();
        $this->enrollmentModel = new Enrollment();
        $this->courseModel = new Course();
    }

    /**
     * List all students with their summary and stats.
     */
    public function index()
    {
        $this->requireAuth();
        
        $view = new View();
        
        // Get Student Users with Enrollment count
        $students = $this->db->fetchAll(
            "SELECT u.*, 
                    (SELECT COUNT(*) FROM lms_enrollments WHERE student_id = u.id) as course_count
             FROM users u
             WHERE u.role = 'student'
             ORDER BY u.created_at DESC"
        );

        // Stats
        $stats = [
            'total'  => count($students),
            'active' => count(array_filter($students, fn($s) => $s['status'] === 'active')),
            'blocked'=> count(array_filter($students, fn($s) => $s['status'] === 'inactive')),
        ];

        $view->render('admin/views/lms/students/index', [
            'title'    => 'Gestión de Estudiantes',
            'students' => $students,
            'stats'    => $stats,
        ], 'admin/views/layout');
    }

    /**
     * Show form to manually enroll a student.
     */
    public function create()
    {
        $this->requireAuth();
        
        $view = new View();
        $students = $this->db->fetchAll("SELECT id, name, email FROM users WHERE role = 'student' ORDER BY name ASC");
        $courses = $this->db->fetchAll("SELECT id, title FROM lms_courses ORDER BY title ASC");

        $view->render('admin/views/lms/students/create', [
            'title'    => 'Inscribir Estudiante',
            'students' => $students,
            'courses'  => $courses,
        ], 'admin/views/layout');
    }

    /**
     * Store a manual enrollment.
     */
    public function store()
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect('/manager/lms/students');
        }

        $studentId = (int)($_POST['student_id'] ?? 0);
        $courseId = (int)($_POST['course_id'] ?? 0);

        if (!$this->enrollmentModel->isEnrolled($studentId, $courseId)) {
            $this->enrollmentModel->enroll($studentId, $courseId);
            $this->flash('success', 'Estudiante inscrito correctamente.');
        } else {
            $this->flash('error', 'El estudiante ya está inscrito en este curso.');
        }

        $this->redirect('/manager/lms/students');
    }

    /**
     * Unenroll a student.
     */
    public function delete($id)
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect('/manager/lms/students');
        }

        $this->db->query("DELETE FROM lms_enrollments WHERE id = ?", [$id]);
        
        $this->flash('success', 'Inscripción eliminada.');
        $this->redirect('/manager/lms/students');
    }
}

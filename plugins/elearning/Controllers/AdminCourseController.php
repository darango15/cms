<?php

namespace Plugins\Elearning\Controllers;

use Core\View;
use Plugins\Elearning\Models\Course;
use Plugins\Elearning\Models\Enrollment;

class AdminCourseController extends BaseController
{
    private $courseModel;
    private $enrollmentModel;

    public function __construct()
    {
        parent::__construct();
        $this->courseModel = new Course();
        $this->enrollmentModel = new Enrollment();
    }

    /**
     * List all courses in the admin panel.
     */
    public function index()
    {
        $this->requireAuth();
        if ($this->user['role'] !== 'admin' && $this->user['role'] !== 'teacher') {
            $this->redirect('/manager/login');
        }

        $perPage    = 20;
        $page       = max(1, (int)($_GET['page'] ?? 1));
        $q          = trim($_GET['q'] ?? '');
        $status     = $_GET['status'] ?? '';
        $categoryId = isset($_GET['category_id']) ? (int)$_GET['category_id'] : 0;
        $hasProduct = $_GET['has_product'] ?? '';

        $where  = ['1=1'];
        $params = [];

        if ($q !== '') {
            $where[]  = '(c.title LIKE ? OR c.slug LIKE ? OR p.course_code LIKE ?)';
            $params[] = "%{$q}%";
            $params[] = "%{$q}%";
            $params[] = "%{$q}%";
        }
        if (in_array($status, ['published', 'draft', 'archived'])) {
            $where[]  = 'c.status = ?';
            $params[] = $status;
        }
        if ($categoryId > 0) {
            $where[]  = 'c.category_id = ?';
            $params[] = $categoryId;
        }
        if ($hasProduct === '1') {
            $where[] = 'c.product_id IS NOT NULL';
        } elseif ($hasProduct === '0') {
            $where[] = 'c.product_id IS NULL';
        }

        $whereStr = implode(' AND ', $where);

        $total = (int)($this->db->fetchOne(
            "SELECT COUNT(*) AS t FROM lms_courses c
             LEFT JOIN products p ON p.id = c.product_id
             WHERE {$whereStr}", $params
        )['t'] ?? 0);

        $offset  = ($page - 1) * $perPage;
        $courses = $this->db->fetchAll(
            "SELECT c.*, u.name as teacher_name, cat.name as category_name,
                    p.name as product_name, p.status as product_status, p.course_code,
                    (SELECT COUNT(*) FROM lms_enrollments WHERE course_id = c.id) as student_count,
                    (SELECT COUNT(*) FROM lms_lessons    WHERE course_id = c.id) as lesson_count,
                    (SELECT COUNT(*) FROM lms_quizzes    WHERE course_id = c.id) as quiz_count
             FROM lms_courses c
             LEFT JOIN users u           ON u.id  = c.teacher_id
             LEFT JOIN lms_categories cat ON cat.id = c.category_id
             LEFT JOIN products p        ON p.id  = c.product_id
             WHERE {$whereStr}
             ORDER BY c.created_at DESC
             LIMIT {$perPage} OFFSET {$offset}",
            $params
        );

        $categories = $this->db->fetchAll("SELECT id, name FROM lms_categories ORDER BY name ASC");

        $view = new View();
        $view->render('admin/views/lms/courses/index', [
            'title'      => 'Gestión de Cursos LMS',
            'courses'    => $courses,
            'categories' => $categories,
            'total'      => $total,
            'page'       => $page,
            'perPage'    => $perPage,
            'lastPage'   => (int)ceil($total / $perPage),
            'q'          => $q,
            'filterStatus'     => $status,
            'filterCategory'   => $categoryId,
            'filterHasProduct' => $hasProduct,
        ], 'admin/views/layout');
    }

    /**
     * Show the form for creating a new course.
     */
    public function create()
    {
        $this->requireAuth();
        
        $view       = new View();
        $teachers   = $this->db->fetchAll("SELECT id, name FROM users WHERE role IN ('admin', 'teacher')");
        $categories = $this->db->fetchAll("SELECT id, name FROM lms_categories ORDER BY name ASC");
        $products   = $this->db->fetchAll("SELECT id, name, course_code, status FROM products ORDER BY name ASC");

        $view->render('admin/views/lms/courses/create', [
            'title'      => 'Crear Nuevo Curso',
            'teachers'   => $teachers,
            'categories' => $categories,
            'products'   => $products,
        ], 'admin/views/layout');
    }

    /**
     * Store a newly created course in the database.
     */
    public function store()
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect('/manager/lms/courses');
        }

        $title = $_POST['title'] ?? '';
        $slug = $_POST['slug'] ?: $this->generateSlug($title);
        
        $productId = !empty($_POST['product_id']) ? (int)$_POST['product_id'] : null;

        $data = [
            'teacher_id'      => (int)($_POST['teacher_id'] ?? 0),
            'category_id'     => (int)($_POST['category_id'] ?? 0),
            'product_id'      => $productId,
            'title'           => $title,
            'slug'            => $slug,
            'description'     => $_POST['description'] ?? '',
            'image'           => $_POST['image'] ?? '',
            'level'           => $_POST['level'] ?? 'beginner',
            'status'          => $_POST['status'] ?? 'draft',
            'price'           => (float)($_POST['price'] ?? 0.00),
            'pass_percentage' => (int)($_POST['pass_percentage'] ?? 70),
            'created_at'      => date('Y-m-d H:i:s'),
        ];

        $this->db->insert('lms_courses', $data);
        
        $this->flash('success', 'Curso creado correctamente.');
        $this->redirect('/manager/lms/courses');
    }

    /**
     * Show the full form for editing general course info. (Image 2)
     */
    public function edit($id)
    {
        $this->requireAuth();
        
        $course = $this->courseModel->find($id);
        if (!$course) {
            $this->redirect('/manager/lms/courses');
        }

        $teachers   = $this->db->fetchAll("SELECT id, name FROM users WHERE role IN ('admin', 'teacher')");
        $categories = $this->db->fetchAll("SELECT id, name FROM lms_categories ORDER BY name ASC");
        $products   = $this->db->fetchAll(
            "SELECT id, name, course_code, status FROM products ORDER BY name ASC"
        );
        // Enrich course with linked product info
        if (!empty($course['product_id'])) {
            $prod = $this->db->fetchOne("SELECT name, status, image FROM products WHERE id = ?", [$course['product_id']]);
            if ($prod) {
                $course['product_name']   = $prod['name'];
                $course['product_status'] = $prod['status'];
                $course['product_image']  = $prod['image'];
            }
        }

        $view = new View();
        $view->render('admin/views/lms/courses/edit', [
            'title'      => 'Editar Curso: ' . $course['title'],
            'course'     => $course,
            'teachers'   => $teachers,
            'categories' => $categories,
            'products'   => $products,
        ], 'admin/views/layout');
    }

    /**
     * Show the rich dashboard for managing a course. (Image 3)
     */
    public function show($id)
    {
        $this->requireAuth();
        
        $course = $this->courseModel->find($id);
        if (!$course) {
            $this->redirect('/manager/lms/courses');
        }

        // Fetch teachers and categories for display names
        $teachers = $this->db->fetchAll("SELECT id, name FROM users WHERE role IN ('admin', 'teacher')");
        $categories = $this->db->fetchAll("SELECT id, name FROM lms_categories ORDER BY name ASC");

        // Fetch lessons and quizzes for the content overview
        $lessons = $this->db->fetchAll("SELECT * FROM lms_lessons WHERE course_id = ? ORDER BY order_num ASC", [$id]);
        $quizzes = $this->db->fetchAll("SELECT * FROM lms_quizzes WHERE course_id = ? ORDER BY created_at ASC", [$id]);

        $view = new View();
        $view->render('admin/views/lms/courses/show', [
            'title'      => 'Gestión de Curso',
            'course'     => $course,
            'teachers'   => $teachers,
            'categories' => $categories,
            'lessons'    => $lessons,
            'quizzes'    => $quizzes,
            'lessonCount'=> count($lessons),
            'quizCount'  => count($quizzes),
        ], 'admin/views/layout');
    }

    /**
     * Update an existing course in the database.
     */
    public function update($id)
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect('/manager/lms/courses');
        }

        $productId = !empty($_POST['product_id']) ? (int)$_POST['product_id'] : null;

        // Handle optional image file upload
        $imagePath = $_POST['image'] ?? '';
        if (!empty($_FILES['image_file']['tmp_name'])) {
            $uploadDir = dirname(__DIR__, 4) . '/public/uploads/courses/';
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0755, true);
            }
            $ext      = strtolower(pathinfo($_FILES['image_file']['name'], PATHINFO_EXTENSION));
            $allowed  = ['jpg', 'jpeg', 'png', 'webp'];
            if (in_array($ext, $allowed) && $_FILES['image_file']['size'] <= 5 * 1024 * 1024) {
                $filename  = 'course_' . uniqid('', true) . '.' . $ext;
                if (move_uploaded_file($_FILES['image_file']['tmp_name'], $uploadDir . $filename)) {
                    $imagePath = '/uploads/courses/' . $filename;
                }
            }
        }

        $data = [
            'teacher_id'      => (int)($_POST['teacher_id'] ?? 0),
            'category_id'     => (int)($_POST['category_id'] ?? 0),
            'product_id'      => $productId,
            'title'           => $_POST['title'] ?? '',
            'slug'            => $_POST['slug'] ?? '',
            'description'     => $_POST['description'] ?? '',
            'image'           => $imagePath,
            'level'           => $_POST['level'] ?? 'beginner',
            'status'          => $_POST['status'] ?? 'draft',
            'price'           => (float)($_POST['price'] ?? 0.00),
            'pass_percentage' => (int)($_POST['pass_percentage'] ?? 70),
            'updated_at'      => date('Y-m-d H:i:s'),
        ];

        $this->db->update('lms_courses', $data, 'id = :id', ['id' => $id]);
        
        $this->flash('success', 'Curso actualizado correctamente.');
        $this->redirect('/manager/lms/courses');
    }

    /**
     * Delete an existing course.
     */
    public function delete($id)
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect('/manager/lms/courses');
        }

        $this->db->query("DELETE FROM lms_courses WHERE id = ?", [$id]);
        
        $this->flash('success', 'Curso eliminado correctamente.');
        $this->redirect('/manager/lms/courses');
    }

    private function generateSlug($string)
    {
        $string = strtolower(trim($string));
        $string = preg_replace('/[^a-z0-9-]/', '-', $string);
        $string = preg_replace('/-+/', '-', $string);
        return rtrim($string, '-');
    }

    // ─── Lesson Management ────────────────────────────────────────

    /**
     * List all lessons for a specific course.
     */
    public function lessons($courseId)
    {
        $this->requireAuth();
        
        $course = $this->courseModel->find($courseId);
        if (!$course) {
            $this->redirect('/manager/lms/courses');
        }

        $view = new View();
        $lessons = $this->db->fetchAll(
            "SELECT * FROM lms_lessons WHERE course_id = ? ORDER BY order_num ASC",
            [$courseId]
        );

        $view->render('admin/views/lms/lessons/index', [
            'title'   => 'Lecciones: ' . $course['title'],
            'course'  => $course,
            'lessons' => $lessons,
        ], 'admin/views/layout');
    }

    /**
     * Show form to create a new lesson.
     */
    public function createLesson($courseId)
    {
        $this->requireAuth();
        
        $course = $this->courseModel->find($courseId);
        if (!$course) {
            $this->redirect('/manager/lms/courses');
        }

        $view = new View();
        $view->render('admin/views/lms/lessons/create', [
            'title'  => 'Añadir Lección',
            'course' => $course,
        ], 'admin/views/layout');
    }

    /**
     * Store a new lesson.
     */
    public function storeLesson($courseId)
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect("/manager/lms/courses/{$courseId}/lessons");
        }

        $data = [
            'course_id' => (int)$courseId,
            'title'     => $_POST['title'] ?? '',
            'type'      => $_POST['type'] ?? 'text',
            'content'   => $_POST['content'] ?? '',
            'video_url' => $_POST['video_url'] ?? '',
            'file_path' => $_POST['file_path'] ?? '',
            'duration'  => (int)($_POST['duration'] ?? 0),
            'order_num' => (int)($_POST['order_num'] ?? 0),
            'is_active' => isset($_POST['is_active']) ? 1 : 0,
            'created_at'=> date('Y-m-d H:i:s')
        ];

        $this->db->insert('lms_lessons', $data);
        
        $this->flash('success', 'Lección añadida correctamente.');
        $this->redirect("/manager/lms/courses/{$courseId}/lessons");
    }

    /**
     * Show form to edit a lesson.
     */
    public function editLesson($courseId, $id)
    {
        $this->requireAuth();
        
        $course = $this->courseModel->find($courseId);
        $lesson = $this->db->fetchOne("SELECT * FROM lms_lessons WHERE id = ?", [$id]);

        if (!$course || !$lesson) {
            $this->redirect("/manager/lms/courses/{$courseId}/lessons");
        }

        $view = new View();
        $view->render('admin/views/lms/lessons/edit', [
            'title'  => 'Editar Lección: ' . $lesson['title'],
            'course' => $course,
            'lesson' => $lesson,
        ], 'admin/views/layout');
    }

    /**
     * Update an existing lesson.
     */
    public function updateLesson($courseId, $id)
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect("/manager/lms/courses/{$courseId}/lessons");
        }

        $data = [
            'title'     => $_POST['title'] ?? '',
            'type'      => $_POST['type'] ?? 'text',
            'content'   => $_POST['content'] ?? '',
            'video_url' => $_POST['video_url'] ?? '',
            'file_path' => $_POST['file_path'] ?? '',
            'duration'  => (int)($_POST['duration'] ?? 0),
            'order_num' => (int)($_POST['order_num'] ?? 0),
            'is_active' => isset($_POST['is_active']) ? 1 : 0,
            'updated_at'=> date('Y-m-d H:i:s')
        ];

        $this->db->update('lms_lessons', $data, 'id = :id', ['id' => $id]);
        
        $this->flash('success', 'Lección actualizada correctamente.');
        $this->redirect("/manager/lms/courses/{$courseId}/lessons");
    }

    /**
     * Delete a lesson.
     */
    public function deleteLesson($courseId, $id)
    {
        $this->requireAuth();
        
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            $this->redirect("/manager/lms/courses/{$courseId}/lessons");
        }

        $this->db->query("DELETE FROM lms_lessons WHERE id = ?", [$id]);
        
        $this->flash('success', 'Lección eliminada correctamente.');
        $this->redirect("/manager/lms/courses/{$courseId}/lessons");
    }
}

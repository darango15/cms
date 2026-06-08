<?php

namespace Plugins\Elearning\Models;

use Core\Model;

class Course extends Model
{
    protected $table = 'lms_courses';

    public const STATUS_DRAFT     = 'draft';
    public const STATUS_PUBLISHED = 'published';
    public const STATUS_ARCHIVED  = 'archived';

    /**
     * Get published courses with teacher and category data.
     */
    public function published($page = 1, $perPage = 12, $categoryId = null)
    {
        $where = "c.status = 'published'";
        $params = [];

        if ($categoryId) {
            $where .= " AND c.category_id = ?";
            $params[] = $categoryId;
        }

        $offset = ($page - 1) * $perPage;

        $totalResult = $this->db->fetchOne(
            "SELECT COUNT(*) as t FROM {$this->table} c WHERE {$where}",
            $params
        );
        $total = $totalResult['t'] ?? 0;

        $data = $this->db->fetchAll(
            "SELECT c.*, u.name AS teacher_name, cat.name AS category_name
             FROM {$this->table} c
             LEFT JOIN users u ON u.id = c.teacher_id
             LEFT JOIN lms_categories cat ON cat.id = c.category_id
             WHERE {$where}
             ORDER BY c.created_at DESC
             LIMIT $perPage OFFSET $offset",
            $params
        );

        return [
            'data'         => $data,
            'total'        => (int) $total,
            'per_page'     => $perPage,
            'current_page' => $page,
            'last_page'    => (int) ceil($total / $perPage),
        ];
    }

    /**
     * Find a course by its slug.
     */
    public function findBySlug($slug)
    {
        return $this->db->fetchOne(
            "SELECT c.*, u.name AS teacher_name, u.bio AS teacher_bio,
                    cat.name AS category_name
             FROM {$this->table} c
             LEFT JOIN users u ON u.id = c.teacher_id
             LEFT JOIN lms_categories cat ON cat.id = c.category_id
             WHERE c.slug = ?",
            [$slug]
        );
    }

    /**
     * Get lessons and quizzes for a course.
     */
    public function getLessonsAndQuizzes($courseId)
    {
        $lessons = $this->db->fetchAll(
            "SELECT * FROM lms_lessons WHERE course_id = ? ORDER BY order_num ASC",
            [$courseId]
        );

        $quizzes = $this->db->fetchAll(
            "SELECT * FROM lms_quizzes WHERE course_id = ? ORDER BY created_at ASC",
            [$courseId]
        );

        return ['lessons' => $lessons, 'quizzes' => $quizzes];
    }

    /**
     * Count published courses.
     */
    public function countPublished()
    {
        $result = $this->db->fetchOne("SELECT COUNT(*) as total FROM {$this->table} WHERE status = 'published'");
        return $result ? (int)$result['total'] : 0;
    }
}

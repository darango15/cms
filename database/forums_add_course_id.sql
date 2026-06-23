ALTER TABLE lms_forum_topics
    MODIFY forum_id INT UNSIGNED NOT NULL DEFAULT 0,
    ADD COLUMN course_id INT UNSIGNED DEFAULT NULL AFTER forum_id,
    ADD INDEX idx_course_id (course_id);

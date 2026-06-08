-- Migration and Consolidation Script for cms_db2
-- Merges data from temp_elearning into cms_db2 (loaded from pamel_db)

SET FOREIGN_KEY_CHECKS = 0;

-- 1. Create Stored Procedure for dynamic FK removal
DROP PROCEDURE IF EXISTS DropAllFKs;
DELIMITER //
CREATE PROCEDURE DropAllFKs()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE tbl_name VARCHAR(255);
    DECLARE fk_name VARCHAR(255);
    DECLARE cur CURSOR FOR 
        SELECT TABLE_NAME, CONSTRAINT_NAME 
        FROM information_schema.KEY_COLUMN_USAGE 
        WHERE TABLE_SCHEMA = DATABASE() 
          AND REFERENCED_TABLE_NAME IS NOT NULL;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO tbl_name, fk_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SET @s = CONCAT('ALTER TABLE ', tbl_name, ' DROP FOREIGN KEY ', fk_name);
        PREPARE stmt FROM @s;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

-- 2. Drop all FKs in cms_db2 to allow schema modifications
CALL DropAllFKs();

-- 3. Standardize cms_db2.users and its references
-- First change role to VARCHAR to allow mapping values not in current ENUM
ALTER TABLE cms_db2.users MODIFY role VARCHAR(50);

-- Map existing 'customer' role to 'student'
UPDATE cms_db2.users SET role = 'student' WHERE role = 'customer';
-- Map any other non-standard roles to 'student'
UPDATE cms_db2.users SET role = 'student' WHERE role NOT IN ('admin', 'editor', 'teacher', 'student');

ALTER TABLE cms_db2.users MODIFY id INT UNSIGNED AUTO_INCREMENT;
ALTER TABLE cms_db2.users MODIFY role ENUM('admin', 'student', 'teacher', 'editor') NOT NULL DEFAULT 'student';

-- Normalize known referencing columns in cms_db2
ALTER TABLE cms_db2.orders MODIFY user_id INT UNSIGNED;
ALTER TABLE cms_db2.pages MODIFY author_id INT UNSIGNED;

-- 4. Import Users from temp_elearning (Avoid duplicates by email)
INSERT IGNORE INTO cms_db2.users (name, email, password, role, created_at, updated_at)
SELECT name, email, password, 
       CASE WHEN id IN (SELECT DISTINCT teacher_id FROM temp_elearning.courses) THEN 'teacher' ELSE 'student' END as role,
       COALESCE(created_at, NOW()), COALESCE(updated_at, NOW())
FROM temp_elearning.users;

-- 5. Create LMS Tables in cms_db2 with 'lms_' prefix
-- Categories
DROP TABLE IF EXISTS cms_db2.lms_categories;
CREATE TABLE cms_db2.lms_categories AS SELECT * FROM temp_elearning.categories;
ALTER TABLE cms_db2.lms_categories MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;

-- Courses
DROP TABLE IF EXISTS cms_db2.lms_courses;
CREATE TABLE cms_db2.lms_courses AS SELECT * FROM temp_elearning.courses;
ALTER TABLE cms_db2.lms_courses MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cms_db2.lms_courses MODIFY teacher_id INT UNSIGNED;
ALTER TABLE cms_db2.lms_courses MODIFY category_id INT UNSIGNED;

-- Lessons
DROP TABLE IF EXISTS cms_db2.lms_lessons;
CREATE TABLE cms_db2.lms_lessons AS SELECT * FROM temp_elearning.lessons;
ALTER TABLE cms_db2.lms_lessons MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cms_db2.lms_lessons MODIFY course_id INT UNSIGNED;

-- Enrollments
DROP TABLE IF EXISTS cms_db2.lms_enrollments;
CREATE TABLE cms_db2.lms_enrollments AS SELECT * FROM temp_elearning.enrollments;
ALTER TABLE cms_db2.lms_enrollments MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cms_db2.lms_enrollments MODIFY course_id INT UNSIGNED;
ALTER TABLE cms_db2.lms_enrollments MODIFY student_id INT UNSIGNED;

-- Lesson Progress
DROP TABLE IF EXISTS cms_db2.lms_lesson_progress;
CREATE TABLE cms_db2.lms_lesson_progress AS SELECT * FROM temp_elearning.lesson_progress;
ALTER TABLE cms_db2.lms_lesson_progress MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cms_db2.lms_lesson_progress MODIFY student_id INT UNSIGNED;
ALTER TABLE cms_db2.lms_lesson_progress MODIFY lesson_id INT UNSIGNED;

-- Quizzes and Questions
DROP TABLE IF EXISTS cms_db2.lms_quizzes;
CREATE TABLE cms_db2.lms_quizzes AS SELECT * FROM temp_elearning.quizzes;
ALTER TABLE cms_db2.lms_quizzes MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cms_db2.lms_quizzes MODIFY course_id INT UNSIGNED;

DROP TABLE IF EXISTS cms_db2.lms_questions;
CREATE TABLE cms_db2.lms_questions AS SELECT * FROM temp_elearning.questions;
ALTER TABLE cms_db2.lms_questions MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cms_db2.lms_questions MODIFY quiz_id INT UNSIGNED;

DROP TABLE IF EXISTS cms_db2.lms_question_options;
CREATE TABLE cms_db2.lms_question_options AS SELECT * FROM temp_elearning.question_options;
ALTER TABLE cms_db2.lms_question_options MODIFY id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE cms_db2.lms_question_options MODIFY question_id INT UNSIGNED;

-- 6. Map User IDs to the unified cms_db2.users table
-- Map Courses Teachers
UPDATE cms_db2.lms_courses lc 
JOIN temp_elearning.users lu ON lc.teacher_id = lu.id
JOIN cms_db2.users u ON lu.email = u.email
SET lc.teacher_id = u.id;

-- Map Enrollments Students
UPDATE cms_db2.lms_enrollments le
JOIN temp_elearning.users lu ON le.student_id = lu.id
JOIN cms_db2.users u ON lu.email = u.email
SET le.student_id = u.id;

-- Map Lesson Progress Students
UPDATE cms_db2.lms_lesson_progress llp
JOIN temp_elearning.users lu ON llp.student_id = lu.id
JOIN cms_db2.users u ON lu.email = u.email
SET llp.student_id = u.id;

-- 7. Clean up
SET FOREIGN_KEY_CHECKS = 1;
DROP PROCEDURE IF EXISTS DropAllFKs;

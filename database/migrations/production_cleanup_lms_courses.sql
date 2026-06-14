-- ============================================================
-- PRODUCCIÓN: Limpieza y normalización de lms_courses
-- Ejecutar en cms_db2 via phpMyAdmin, en el orden indicado.
-- Hacer un BACKUP antes de ejecutar.
-- ============================================================

-- ------------------------------------------------------------
-- PASO 1: Agregar columna course_code a lms_courses (si no existe)
-- ------------------------------------------------------------
ALTER TABLE lms_courses
  ADD COLUMN IF NOT EXISTS course_code VARCHAR(50) NULL DEFAULT NULL AFTER product_id;

-- ------------------------------------------------------------
-- PASO 2: Actualizar slugs para que coincidan con los títulos
-- ------------------------------------------------------------
UPDATE lms_courses
SET slug = LOWER(TRIM(REGEXP_REPLACE(REGEXP_REPLACE(title, '[^a-zA-Z0-9 ]', ''), ' +', '-')));

-- Corregir slug específico si quedó mal
UPDATE lms_courses
SET title = 'Refresher Course of Use of Leadership and Managerial Skills',
    slug  = 'refresher-course-of-use-of-leadership-and-managerial-skills'
WHERE slug LIKE '%skillserial%';

-- ------------------------------------------------------------
-- PASO 3: Eliminar cursos sin product_id (sin producto en products)
--   Regla de negocio: products mandan. Si no hay producto = borrar.
-- ------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;

-- Eliminar contenido dependiente primero
DELETE FROM lms_enrollments  WHERE course_id IN (SELECT id FROM lms_courses WHERE product_id IS NULL);
DELETE FROM lms_certificates WHERE course_id IN (SELECT id FROM lms_courses WHERE product_id IS NULL);
DELETE FROM lms_quizzes      WHERE course_id IN (SELECT id FROM lms_courses WHERE product_id IS NULL);
DELETE FROM lms_lessons      WHERE course_id IN (SELECT id FROM lms_courses WHERE product_id IS NULL);
DELETE FROM lms_courses      WHERE product_id IS NULL;

-- Eliminar cursos cuyo product_id no existe en products
DELETE FROM lms_enrollments  WHERE course_id IN (SELECT c.id FROM lms_courses c LEFT JOIN products p ON p.id = c.product_id WHERE p.id IS NULL);
DELETE FROM lms_certificates WHERE course_id IN (SELECT c.id FROM lms_courses c LEFT JOIN products p ON p.id = c.product_id WHERE p.id IS NULL);
DELETE FROM lms_quizzes      WHERE course_id IN (SELECT c.id FROM lms_courses c LEFT JOIN products p ON p.id = c.product_id WHERE p.id IS NULL);
DELETE FROM lms_lessons      WHERE course_id IN (SELECT c.id FROM lms_courses c LEFT JOIN products p ON p.id = c.product_id WHERE p.id IS NULL);
DELETE lms_courses FROM lms_courses LEFT JOIN products p ON p.id = lms_courses.product_id WHERE p.id IS NULL;

SET FOREIGN_KEY_CHECKS = 1;

-- ------------------------------------------------------------
-- PASO 4: Corregir typo en título si existe
-- ------------------------------------------------------------
UPDATE lms_courses
SET title = 'Fire Prevention and Fire Fighting',
    slug  = 'fire-prevention-and-fire-fighting'
WHERE title LIKE '%Fightubg%';

-- ------------------------------------------------------------
-- PASO 5: Renumerar IDs consecutivamente
--   Este paso es OPCIONAL si los IDs de producción son diferentes.
--   Solo ejecutar si quieres IDs limpios 1, 2, 3...
-- ------------------------------------------------------------

-- 5a. Crear tabla temporal de mapeo
CREATE TEMPORARY TABLE _id_map (old_id INT PRIMARY KEY, new_id INT);
SET @r = 0;
INSERT INTO _id_map SELECT id, (@r := @r + 1) FROM lms_courses ORDER BY id;

SET FOREIGN_KEY_CHECKS = 0;

-- 5b. Mover a rango seguro (+10000)
UPDATE lms_courses      SET id        = id        + 10000 ORDER BY id DESC;
UPDATE lms_lessons      SET course_id = course_id + 10000;
UPDATE lms_enrollments  SET course_id = course_id + 10000;
UPDATE lms_quizzes      SET course_id = course_id + 10000;
UPDATE lms_certificates SET course_id = course_id + 10000;

-- 5c. Asignar IDs definitivos desde el mapeo
UPDATE lms_courses c      JOIN _id_map m ON c.id        = m.old_id + 10000 SET c.id        = m.new_id;
UPDATE lms_lessons l      JOIN _id_map m ON l.course_id = m.old_id + 10000 SET l.course_id = m.new_id;
UPDATE lms_enrollments e  JOIN _id_map m ON e.course_id = m.old_id + 10000 SET e.course_id = m.new_id;
UPDATE lms_quizzes q      JOIN _id_map m ON q.course_id = m.old_id + 10000 SET q.course_id = m.new_id;
UPDATE lms_certificates t JOIN _id_map m ON t.course_id = m.old_id + 10000 SET t.course_id = m.new_id;

SET FOREIGN_KEY_CHECKS = 1;

-- 5d. Reset AUTO_INCREMENT al siguiente disponible
SET @max_id = (SELECT MAX(id) FROM lms_courses);
SET @sql = CONCAT('ALTER TABLE lms_courses AUTO_INCREMENT = ', @max_id + 1);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

DROP TEMPORARY TABLE _id_map;

-- ------------------------------------------------------------
-- VERIFICACIÓN FINAL
-- ------------------------------------------------------------
SELECT
    c.id,
    c.title,
    c.slug,
    c.status,
    c.product_id,
    p.name    AS product_name,
    p.status  AS product_status
FROM lms_courses c
JOIN products p ON p.id = c.product_id
ORDER BY c.id;

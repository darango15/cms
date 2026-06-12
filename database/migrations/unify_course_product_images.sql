-- Unifica imágenes: products es la fuente de verdad.
-- Limpia paths rotos en lms_courses (archivos que no existen).
-- Ejecutar en cms_db2 de PRODUCCIÓN:

-- 1. Limpiar paths de imagen inexistentes en lms_courses
UPDATE lms_courses
SET image = NULL
WHERE image LIKE '/uploads/courses/%';

-- 2. Vincular cursos a productos por coincidencia de código
-- (Ajusta los IDs si difieren en producción)
UPDATE lms_courses SET product_id = 14 WHERE id = 4  AND product_id IS NULL;
UPDATE lms_courses SET product_id = 15 WHERE id = 5  AND product_id IS NULL;
UPDATE lms_courses SET product_id = 42 WHERE id = 8  AND product_id IS NULL;
UPDATE lms_courses SET product_id = 12 WHERE id = 18 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 39 WHERE id = 53 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 16 WHERE id = 140 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 39 WHERE id = 141 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 40 WHERE id = 142 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 41 WHERE id = 143 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 43 WHERE id = 145 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 44 WHERE id = 146 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 46 WHERE id = 147 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 10 WHERE id = 148 AND product_id IS NULL;
UPDATE lms_courses SET product_id =  9 WHERE id = 151 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 11 WHERE id = 152 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 23 WHERE id =   9 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 36 WHERE id =  13 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 37 WHERE id =  14 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 38 WHERE id =  15 AND product_id IS NULL;
UPDATE lms_courses SET product_id = 13 WHERE id = 117 AND product_id IS NULL;
UPDATE lms_courses SET product_id =  8 WHERE id = 150 AND product_id IS NULL;

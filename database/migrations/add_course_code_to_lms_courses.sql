-- Agrega course_code propio a lms_courses (usado cuando no hay producto vinculado)
ALTER TABLE lms_courses
  ADD COLUMN course_code VARCHAR(50) NULL DEFAULT NULL AFTER product_id;

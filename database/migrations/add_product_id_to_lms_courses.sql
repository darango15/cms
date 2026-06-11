-- Vincula cursos LMS con productos del ecommerce.
-- Ejecutar en cms_db2:
--   mysql -u root cms_db2 < database/migrations/add_product_id_to_lms_courses.sql

ALTER TABLE lms_courses
    ADD COLUMN product_id INT NULL DEFAULT NULL AFTER category_id,
    ADD INDEX idx_lms_courses_product_id (product_id),
    ADD CONSTRAINT fk_lms_courses_product
        FOREIGN KEY (product_id) REFERENCES products (id)
        ON DELETE SET NULL ON UPDATE CASCADE;

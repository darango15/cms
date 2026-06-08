-- =============================================================================
-- Migración: Datos de producción pamel_db.sql → cms_db2
-- Fecha: 2026-06-08
-- Descripción: Inserta los registros nuevos encontrados en los dumps de
--              producción (pamel_db.sql) que no están aún en cms_db2.
--              El dump de elearning_DB.sql ya está completamente sincronizado
--              (verificado: mismo número de filas en todas las tablas).
--
-- Datos a migrar:
--   - 1 usuario nuevo (odigomez12@gmail.com, customer)
--   - 4 órdenes nuevas (IDs 12-15, todas con user_id=NULL)
--   - 4 order_items correspondientes
--   - 1 admission_request nueva (ID 7)
--   - 4 contact_messages nuevos (IDs 9-12)
--
-- Uso:
--   mysql -u root cms_db2 < database/migrations/migrate_pamel_prod_data.sql
-- =============================================================================

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- -----------------------------------------------------------------------------
-- 1. USUARIO NUEVO
--    odigomez12@gmail.com registrado en pamel el 2026-05-29, rol customer.
--    Verificado que no existe en cms_db2 por email.
-- -----------------------------------------------------------------------------
INSERT INTO users (name, email, password, role, status, created_at, updated_at)
SELECT p.name, p.email, p.password, 'student', 'active', p.created_at, p.updated_at
FROM tmp_pamel_prod.users p
WHERE p.email = 'odigomez12@gmail.com'
  AND NOT EXISTS (SELECT 1 FROM cms_db2.users c WHERE c.email = p.email);

-- -----------------------------------------------------------------------------
-- 2. ÓRDENES NUEVAS (IDs 12-15)
--    Todas con user_id=NULL (compras de invitado), el auto_increment de cms_db2
--    ya estaba en 12 por lo que los IDs se preservan automáticamente.
-- -----------------------------------------------------------------------------
INSERT INTO orders
    (id, user_id, total_amount, status, payment_id, payment_method,
     payment_status, customer_name, customer_email, customer_phone,
     shipping_address, created_at, updated_at)
SELECT
    p.id, p.user_id, p.total_amount, p.status, p.payment_id, p.payment_method,
    p.payment_status, p.customer_name, p.customer_email, p.customer_phone,
    p.shipping_address, p.created_at, p.updated_at
FROM tmp_pamel_prod.orders p
WHERE p.id IN (12, 13, 14, 15)
  AND NOT EXISTS (SELECT 1 FROM cms_db2.orders c WHERE c.id = p.id);

-- -----------------------------------------------------------------------------
-- 3. ORDER ITEMS para las órdenes 12-15
-- -----------------------------------------------------------------------------
INSERT INTO order_items
    (id, order_id, product_id, product_name, quantity, price)
SELECT
    p.id, p.order_id, p.product_id, p.product_name, p.quantity, p.price
FROM tmp_pamel_prod.order_items p
WHERE p.order_id IN (12, 13, 14, 15)
  AND NOT EXISTS (SELECT 1 FROM cms_db2.order_items c WHERE c.id = p.id);

-- -----------------------------------------------------------------------------
-- 4. ADMISSION REQUEST NUEVA (ID 7 en pamel_prod)
--    keyla830k.a@gmail.com, registrada el 2026-05-31.
-- -----------------------------------------------------------------------------
INSERT INTO admission_requests
    (id, given_name, surname, passport_id, nationality, date_of_birth,
     country_of_birth, email, address, capacity, phone, course,
     consent_accepted, id_file, health_certificate_file, status, notes,
     created_at, updated_at)
SELECT
    p.id, p.given_name, p.surname, p.passport_id, p.nationality, p.date_of_birth,
    p.country_of_birth, p.email, p.address, p.capacity, p.phone, p.course,
    p.consent_accepted, p.id_file, p.health_certificate_file, p.status, p.notes,
    p.created_at, p.updated_at
FROM tmp_pamel_prod.admission_requests p
WHERE p.id = 7
  AND NOT EXISTS (SELECT 1 FROM cms_db2.admission_requests c WHERE c.id = p.id);

-- -----------------------------------------------------------------------------
-- 5. CONTACT MESSAGES NUEVOS (IDs 9-12)
-- -----------------------------------------------------------------------------
INSERT INTO contact_messages
    (id, name, email, phone, subject, message, status, created_at)
SELECT
    p.id, p.name, p.email, p.phone, p.subject, p.message, p.status, p.created_at
FROM tmp_pamel_prod.contact_messages p
WHERE p.id IN (9, 10, 11, 12)
  AND NOT EXISTS (SELECT 1 FROM cms_db2.contact_messages c WHERE c.id = p.id);

-- -----------------------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 1;

-- VERIFICACIÓN
-- SELECT 'orders' AS tabla, COUNT(*) AS total FROM orders
-- UNION ALL SELECT 'order_items', COUNT(*) FROM order_items
-- UNION ALL SELECT 'admission_requests', COUNT(*) FROM admission_requests
-- UNION ALL SELECT 'contact_messages', COUNT(*) FROM contact_messages
-- UNION ALL SELECT 'users', COUNT(*) FROM users;

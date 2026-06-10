-- =============================================================================
-- Patch: arreglar credenciales admin en producción
-- Ejecutar en phpMyAdmin o SSH
--
-- Resultado: danelio.arango@gmail.com → admin / admin123
-- =============================================================================

-- Promover danelio.arango@gmail.com a admin y asignar contraseña admin123
UPDATE users
SET role     = 'admin',
    status   = 'active',
    password = '$2y$10$d9MtOxdWTd77OcHpUM4DXeaSqxBhOCWFX3qcd/Fd4BdEbmHD9TT/C'
WHERE email = 'danelio.arango@gmail.com';

-- Verificar
SELECT id, name, email, role, status FROM users WHERE role = 'admin';

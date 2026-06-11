-- =============================================================================
-- Patch: arreglar credenciales admin en producción
-- Ejecutar en phpMyAdmin o SSH
--
-- Resultado: danelio.arango@gmail.com → admin / admin123
-- =============================================================================

-- Promover y asignar contraseña admin123 a danelio.arango@gmail.com
UPDATE users
SET role     = 'admin',
    status   = 'active',
    password = '$2y$10$7ba422VohmeFM.leGGThDOB4kvDCzI8b1n0dxVpnqVDC4t9r2p.Cu'
WHERE email = 'danelio.arango@gmail.com';

-- Verificar
SELECT id, name, email, role, status FROM users WHERE role = 'admin';

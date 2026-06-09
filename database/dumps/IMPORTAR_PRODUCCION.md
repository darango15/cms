# Migrar DB a Producción

## Paso 1: Generar el dump desde Laragon (local)

Ejecuta desde la raíz del proyecto en PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\export_db.ps1
```

Esto genera automáticamente `database/dumps/cms_db2_production_YYYYMMDD.sql` con:
- Dump completo de `cms_db2`
- Collation corregida (`utf8mb4_unicode_ci`) para compatibilidad con el servidor

---

## Paso 2: Importar en producción

### Opción A — Plesk (recomendado)

1. Ir a **Plesk → Databases**
2. Clic en **Import Dump**
3. Subir el archivo `cms_db2_production_YYYYMMDD.sql`
4. Confirmar

> Si la DB ya tiene datos y quieres reemplazarlos: clic en **Empty** (vaciar) antes de importar.

### Opción B — SSH

```bash
mysql -u DB_USER -p DB_NAME < cms_db2_production_YYYYMMDD.sql
```

### Opción C — phpMyAdmin

1. Abrir phpMyAdmin desde Plesk
2. Seleccionar la base de datos
3. Pestaña **Importar** → seleccionar el archivo → **Continuar**

---

## Paso 3: Verificar .env en producción

El archivo `.env` en el servidor debe tener los datos correctos:

```env
DB_HOST=localhost
DB_NAME=nombre_de_tu_db_en_plesk
DB_USER=usuario_de_tu_db_en_plesk
DB_PASS=contraseña_de_tu_db_en_plesk

SITE_URL=https://pamel.edu.pa
```

---

## Tablas incluidas (28 en total)

| Módulo | Tablas |
|--------|--------|
| Usuarios | `users`, `password_resets` |
| E-commerce | `products`, `categories`, `orders`, `order_items`, `cart`, `product_reviews`, `related_products`, `payment_methods` |
| LMS | `lms_courses`, `lms_categories`, `lms_lessons`, `lms_enrollments`, `lms_lesson_progress`, `lms_quizzes`, `lms_questions`, `lms_question_options`, `lms_quiz_attempts`, `lms_quiz_answers`, `lms_certificates` |
| CMS | `pages`, `meta_tags`, `redirects`, `settings` |
| Formularios | `admission_requests`, `contact_messages`, `satisfaction_surveys` |

---

## Notas importantes

- **No importar** si la DB de producción tiene datos más recientes que la local (pedidos nuevos, inscripciones, etc.) — en ese caso usar solo scripts de migración delta.
- El dump incluye `DROP TABLE IF EXISTS` — reemplaza todas las tablas existentes.
- Las imágenes de productos deben estar en `/uploads/` (sin `/public/` prefix).

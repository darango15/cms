# Importar Base de Datos a Producción

## Archivo a usar
`cms_db2_production_20260608.sql` — dump completo unificado (CMS + LMS)

## Opción 1: Desde Plesk (recomendado)

1. Ir a **Plesk → Databases**
2. Seleccionar la base de datos del sitio (o crear una nueva)
3. Clic en **Import Dump**
4. Subir el archivo `cms_db2_production_20260608.sql`
5. Confirmar la importación

> Si la DB ya tiene datos y quieres reemplazarlos: primero haz clic en **Empty** (vaciar) antes de importar.

## Opción 2: Por SSH

```bash
# Reemplaza DB_NAME, DB_USER y DB_PASS con los valores reales de Plesk
mysql -u DB_USER -p DB_NAME < cms_db2_production_20260608.sql
```

## Opción 3: Por phpMyAdmin (si está disponible en Plesk)

1. Abrir phpMyAdmin desde Plesk
2. Seleccionar la base de datos en el panel izquierdo
3. Pestaña **Importar**
4. Seleccionar el archivo SQL
5. Clic en **Continuar**

---

## Después de importar: actualizar el .env en producción

El archivo `.env` en el servidor debe tener los datos correctos de la DB de producción:

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

-- =============================================================================
-- Migración: Unificación elearning_lms → cms_db2
-- Fecha: 2026-06-06
-- Descripción: Crea las tablas faltantes y migra todos los datos de producción
--              del sistema standalone (elearning_lms) al CMS unificado (cms_db2).
--
-- IMPORTANTE: Ejecutar desde MySQL como root o usuario con permisos sobre
--             ambas bases de datos. El sistema elearning_lms NO se modifica.
--
-- Uso:
--   mysql -u root cms_db2 < database/migrations/unify_elearning_lms.sql
-- =============================================================================

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- -----------------------------------------------------------------------------
-- PARTE 1: CAMBIOS DE SCHEMA EN cms_db2
-- -----------------------------------------------------------------------------

-- 1.1 Agregar columnas avatar y bio a users (existían en elearning_lms, no en CMS)
--     MySQL 8.0 no soporta ADD COLUMN IF NOT EXISTS; verificado que no existen.
ALTER TABLE users
    ADD COLUMN avatar VARCHAR(500) NULL DEFAULT NULL AFTER role,
    ADD COLUMN bio    TEXT         NULL DEFAULT NULL AFTER avatar;

-- 1.2 Tabla lms_quiz_attempts (no existía en cms_db2)
CREATE TABLE IF NOT EXISTS lms_quiz_attempts (
    id            INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    student_id    INT UNSIGNED    NOT NULL,
    quiz_id       INT UNSIGNED    NOT NULL,
    score         DECIMAL(5,2)    DEFAULT NULL,
    total_points  SMALLINT        DEFAULT NULL,
    passed        TINYINT(1)      NOT NULL DEFAULT 0,
    started_at    TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    completed_at  TIMESTAMP       NULL DEFAULT NULL,
    PRIMARY KEY (id),
    KEY idx_attempts_student (student_id),
    KEY idx_attempts_quiz    (quiz_id),
    CONSTRAINT fk_lms_attempts_quiz
        FOREIGN KEY (quiz_id) REFERENCES lms_quizzes (id) ON DELETE CASCADE,
    CONSTRAINT fk_lms_attempts_student
        FOREIGN KEY (student_id) REFERENCES users (id) ON DELETE CASCADE
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

-- 1.3 Tabla lms_quiz_answers (no existía en cms_db2)
CREATE TABLE IF NOT EXISTS lms_quiz_answers (
    id                 INT UNSIGNED NOT NULL AUTO_INCREMENT,
    attempt_id         INT UNSIGNED NOT NULL,
    question_id        INT UNSIGNED NOT NULL,
    selected_option_id INT UNSIGNED DEFAULT NULL,
    is_correct         TINYINT(1)   NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    KEY idx_answers_attempt  (attempt_id),
    KEY idx_answers_question (question_id),
    KEY idx_answers_option   (selected_option_id),
    CONSTRAINT fk_lms_answers_attempt
        FOREIGN KEY (attempt_id) REFERENCES lms_quiz_attempts (id) ON DELETE CASCADE,
    CONSTRAINT fk_lms_answers_question
        FOREIGN KEY (question_id) REFERENCES lms_questions (id),
    CONSTRAINT fk_lms_answers_option
        FOREIGN KEY (selected_option_id) REFERENCES lms_question_options (id) ON DELETE SET NULL
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

-- 1.4 Tabla lms_certificates (requerida por Certificate.php del plugin)
CREATE TABLE IF NOT EXISTS lms_certificates (
    id                INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    student_id        INT UNSIGNED  NOT NULL,
    course_id         INT UNSIGNED  NOT NULL,
    certificate_code  VARCHAR(50)   NOT NULL,
    issued_at         TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY uq_cert_code (certificate_code),
    UNIQUE KEY uq_student_course (student_id, course_id),
    KEY idx_cert_student (student_id),
    KEY idx_cert_course  (course_id),
    CONSTRAINT fk_lms_cert_student
        FOREIGN KEY (student_id) REFERENCES users (id) ON DELETE CASCADE,
    CONSTRAINT fk_lms_cert_course
        FOREIGN KEY (course_id)  REFERENCES lms_courses (id) ON DELETE CASCADE
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

-- 1.5 Tabla password_resets (para recuperación de contraseña en el CMS)
CREATE TABLE IF NOT EXISTS password_resets (
    id          INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    email       VARCHAR(255)  NOT NULL,
    token_hash  VARCHAR(64)   NOT NULL,
    expires_at  DATETIME      NOT NULL,
    used        TINYINT(1)    NOT NULL DEFAULT 0,
    created_at  TIMESTAMP     NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    KEY idx_pr_email (email),
    KEY idx_pr_token (token_hash)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- PARTE 2: MIGRACIÓN DE DATOS DESDE elearning_lms
-- Nota: los IDs de cursos, quizzes, preguntas y opciones son idénticos en
-- ambas bases de datos. Solo los IDs de usuarios difieren; se remapean por email.
-- -----------------------------------------------------------------------------

-- 2.1 Inscripciones (enrollments) faltantes en el CMS
--     67 inscripciones existen en elearning_lms pero no en cms_db2.
--     Se insertan mapeando student_id por email del usuario.
INSERT INTO lms_enrollments (student_id, course_id, enrolled_at, completed_at, status)
SELECT
    cms_u.id,
    e.course_id,
    e.enrolled_at,
    e.completed_at,
    e.status
FROM elearning_lms.enrollments e
JOIN elearning_lms.users  el_u ON e.student_id  = el_u.id
JOIN users                cms_u ON el_u.email    = cms_u.email
WHERE NOT EXISTS (
    SELECT 1
    FROM lms_enrollments ce
    WHERE ce.student_id = cms_u.id
      AND ce.course_id  = e.course_id
);

-- 2.2 Quiz attempts (264 intentos de quizzes)
--     student_id se remapea usando el email del usuario de elearning_lms.
INSERT INTO lms_quiz_attempts
    (student_id, quiz_id, score, total_points, passed, started_at, completed_at)
SELECT
    cms_u.id,
    qa.quiz_id,
    qa.score,
    qa.total_points,
    qa.passed,
    qa.started_at,
    qa.completed_at
FROM elearning_lms.quiz_attempts qa
JOIN elearning_lms.users  el_u  ON qa.student_id = el_u.id
JOIN users                cms_u ON el_u.email     = cms_u.email;

-- 2.3 Quiz answers (4317 respuestas de quizzes)
--     attempt_id se remapea buscando el attempt recién insertado mediante la
--     combinación única (student_id_cms, quiz_id, started_at).
--     Los question_id y selected_option_id son idénticos en ambas BDs.
INSERT INTO lms_quiz_answers
    (attempt_id, question_id, selected_option_id, is_correct)
SELECT
    new_att.id,
    ans.question_id,
    ans.selected_option_id,
    ans.is_correct
FROM elearning_lms.quiz_answers  ans
JOIN elearning_lms.quiz_attempts old_att ON ans.attempt_id  = old_att.id
JOIN elearning_lms.users         el_u    ON old_att.student_id = el_u.id
JOIN users                       cms_u   ON el_u.email      = cms_u.email
JOIN lms_quiz_attempts           new_att
    ON  new_att.student_id  = cms_u.id
    AND new_att.quiz_id     = old_att.quiz_id
    AND new_att.started_at  = old_att.started_at;

-- -----------------------------------------------------------------------------
-- PARTE 3: RESTAURAR CONFIGURACIÓN
-- -----------------------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 1;

-- -----------------------------------------------------------------------------
-- VERIFICACIÓN FINAL — ejecutar estas queries para confirmar los resultados
-- -----------------------------------------------------------------------------
-- SELECT 'lms_quiz_attempts migrados'  AS tabla, COUNT(*) AS total FROM lms_quiz_attempts;
-- SELECT 'lms_quiz_answers migrados'   AS tabla, COUNT(*) AS total FROM lms_quiz_answers;
-- SELECT 'lms_enrollments total'       AS tabla, COUNT(*) AS total FROM lms_enrollments;
-- SELECT 'lms_certificates (vacía)'    AS tabla, COUNT(*) AS total FROM lms_certificates;
-- SELECT 'password_resets (vacía)'     AS tabla, COUNT(*) AS total FROM password_resets;
-- DESCRIBE users;

-- Corregir URLs http://cms.test → https://pamel.edu.pa en producción
UPDATE lms_courses
    SET image = REPLACE(image, 'http://cms.test', 'https://pamel.edu.pa')
    WHERE image LIKE 'http://cms.test%';

UPDATE lms_lessons
    SET content = REPLACE(content, 'http://cms.test', 'https://pamel.edu.pa')
    WHERE content LIKE '%http://cms.test%';

UPDATE lms_lessons
    SET content = REPLACE(content, 'http://cms.test/', 'https://pamel.edu.pa/')
    WHERE content LIKE '%http://cms.test/%';

-- Verificación
SELECT id, title, LEFT(image,80) as image FROM lms_courses WHERE image LIKE '%cms.test%';
SELECT id, title FROM lms_lessons WHERE content LIKE '%cms.test%';

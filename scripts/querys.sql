-- USE SecundariaTumiri;
/*
-- ACTUALIZACIÓN MASIVA DE CORREOS INSTITUCIONALES
-- Actualiza todos los correos de estudiantes al dominio institucional
UPDATE ESTUDIANTE 
SET email = CONCAT(REPLACE(LOWER(CONCAT(nombre, '.', apellido)), ' ', ''), '@secundaria.edu.ar')
WHERE email NOT LIKE '%@secundaria.edu.ar';
*/

/*
-- GENERACIÓN DE REPORTE DE CALIFICACIONES BAJAS
-- Identifica estudiantes con promedio menor a 6 para seguimiento
SELECT 
    e.id_estudiante,
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.año,
    c.division,
    AVG(ca.nota) AS promedio,
    COUNT(ca.id_calificacion) AS cantidad_evaluaciones
FROM ESTUDIANTE e
JOIN CURSO c ON e.id_curso = c.id_curso
JOIN CALIFICACION ca ON e.id_estudiante = ca.id_estudiante
GROUP BY e.id_estudiante
HAVING promedio < 6
ORDER BY promedio ASC;
*/

/*
-- MIGRACIÓN DE ESTUDIANTES AL SIGUIENTE AÑO
-- Actualiza automáticamente a los estudiantes al siguiente año escolar
-- Ejecutar al final del año lectivo
UPDATE ESTUDIANTE e
JOIN CURSO c ON e.id_curso = c.id_curso
SET e.id_curso = (
    SELECT id_curso FROM CURSO 
    WHERE año = IF(c.año < 6, c.año + 1, 6) 
    AND division = c.division
    LIMIT 1
)
WHERE c.año < 6;


/*
-- GENERACIÓN DE BOLETINES DE CALIFICACIONES
-- Crea un reporte completo de calificaciones por estudiante
SELECT 
    e.id_estudiante,
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.año,
    c.division,
    m.nombre AS materia,
    AVG(ca.nota) AS promedio_materia,
    (SELECT nota FROM CALIFICACION 
     WHERE id_estudiante = e.id_estudiante AND id_materia = m.id_materia 
     ORDER BY fecha_evaluacion DESC LIMIT 1) AS ultima_nota,
    (SELECT COUNT(*) FROM CALIFICACION 
     WHERE id_estudiante = e.id_estudiante AND id_materia = m.id_materia) AS evaluaciones
FROM ESTUDIANTE e
JOIN CURSO c ON e.id_curso = c.id_curso
JOIN MATERIA m ON c.id_curso = m.id_curso
LEFT JOIN CALIFICACION ca ON e.id_estudiante = ca.id_estudiante AND m.id_materia = ca.id_materia
GROUP BY e.id_estudiante, m.id_materia
ORDER BY e.apellido, e.nombre, m.nombre;
*/


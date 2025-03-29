-- Vista de estudiantes por curso
CREATE VIEW v_estudiantes_por_curso AS
SELECT 
    c.año, c.division, t.nombre AS turno,
    CONCAT(tu.nombre, ' ', tu.apellido) AS tutor,
    COUNT(e.id_estudiante) AS cantidad_estudiantes
FROM CURSO c
JOIN TURNO t ON c.id_turno = t.id_turno
JOIN TUTOR tu ON c.id_tutor = tu.id_tutor
LEFT JOIN ESTUDIANTE e ON c.id_curso = e.id_curso
GROUP BY c.id_curso;

-- Vista de promedios de estudiantes
CREATE VIEW v_promedios_estudiantes AS
SELECT 
    e.id_estudiante, 
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.año, c.division,
    AVG(ca.nota) AS promedio_general,
    COUNT(ca.id_calificacion) AS cantidad_evaluaciones
FROM ESTUDIANTE e
JOIN CURSO c ON e.id_curso = c.id_curso
JOIN CALIFICACION ca ON e.id_estudiante = ca.id_estudiante
GROUP BY e.id_estudiante;

-- Vista de materias por profesor
CREATE VIEW v_materias_profesor AS
SELECT 
    p.id_profesor,
    CONCAT(p.nombre, ' ', p.apellido) AS profesor,
    GROUP_CONCAT(DISTINCT m.nombre ORDER BY m.nombre SEPARATOR ', ') AS materias,
    COUNT(DISTINCT m.id_materia) AS cantidad_materias
FROM PROFESOR p
LEFT JOIN MATERIA m ON p.id_profesor = m.id_profesor
GROUP BY p.id_profesor;

-- Vista de asistencia mensual
CREATE VIEW v_asistencia_mensual AS
SELECT 
    e.id_estudiante,
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.año, c.division,
    YEAR(a.fecha) AS anio,
    MONTH(a.fecha) AS mes,
    SUM(CASE WHEN a.presente THEN 1 ELSE 0 END) AS dias_presente,
    COUNT(*) AS dias_totales,
    (SUM(CASE WHEN a.presente THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS porcentaje_asistencia
FROM ASISTENCIA a
JOIN ESTUDIANTE e ON a.id_estudiante = e.id_estudiante
JOIN CURSO c ON e.id_curso = c.id_curso
GROUP BY e.id_estudiante, YEAR(a.fecha), MONTH(a.fecha);

-- Vista de estudiantes en riesgo
CREATE VIEW v_estudiantes_riesgo AS
SELECT 
    e.id_estudiante,
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.año, c.division,
    AVG(ca.nota) AS promedio,
    (SELECT COUNT(*) FROM ASISTENCIA a 
     WHERE a.id_estudiante = e.id_estudiante AND a.presente = FALSE 
     AND a.fecha BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AND CURDATE()) AS faltas_recientes
FROM ESTUDIANTE e
JOIN CURSO c ON e.id_curso = c.id_curso
JOIN CALIFICACION ca ON e.id_estudiante = ca.id_estudiante
GROUP BY e.id_estudiante
HAVING promedio < 6 OR faltas_recientes > 5;
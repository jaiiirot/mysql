DELIMITER //

-- SP para registrar calificación
CREATE PROCEDURE sp_registrar_calificacion(
    IN p_id_estudiante INT,
    IN p_id_materia INT,
    IN p_id_profesor INT,
    IN p_nota DECIMAL(4,2),
    IN p_fecha_evaluacion DATE
)
BEGIN
    DECLARE v_id_curso INT;
    -- Obtener el curso del estudiante
    SELECT id_curso INTO v_id_curso FROM ESTUDIANTE WHERE id_estudiante = p_id_estudiante;
    
    -- Insertar la calificación
    INSERT INTO CALIFICACION (id_estudiante, id_materia, id_profesor, id_curso, nota, fecha_evaluacion)
    VALUES (p_id_estudiante, p_id_materia, p_id_profesor, v_id_curso, p_nota, p_fecha_evaluacion);
    
    -- Actualizar promedio si es necesario
    SELECT 'Calificación registrada correctamente' AS mensaje;
END //

-- SP para generar reporte de curso
CREATE PROCEDURE sp_generar_reporte_curso(
    IN p_id_curso INT,
    IN p_mes INT,
    IN p_año INT
)
BEGIN
    -- Reporte de calificaciones
    SELECT 
        e.id_estudiante,
        CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
        m.nombre AS materia,
        AVG(c.nota) AS promedio_materia
    FROM ESTUDIANTE e
    JOIN CALIFICACION c ON e.id_estudiante = c.id_estudiante
    JOIN MATERIA m ON c.id_materia = m.id_materia
    WHERE e.id_curso = p_id_curso
    AND MONTH(c.fecha_evaluacion) = p_mes
    AND YEAR(c.fecha_evaluacion) = p_año
    GROUP BY e.id_estudiante, m.id_materia;
    
    -- Reporte de asistencia
    SELECT 
        e.id_estudiante,
        CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
        SUM(CASE WHEN a.presente THEN 1 ELSE 0 END) AS dias_presente,
        COUNT(*) AS dias_totales,
        (SUM(CASE WHEN a.presente THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS porcentaje_asistencia
    FROM ESTUDIANTE e
    LEFT JOIN ASISTENCIA a ON e.id_estudiante = a.id_estudiante
    WHERE e.id_curso = p_id_curso
    AND MONTH(a.fecha) = p_mes
    AND YEAR(a.fecha) = p_año
    GROUP BY e.id_estudiante;
END //
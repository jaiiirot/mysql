DELIMITER //

-- Función para calcular promedio de un estudiante
CREATE FUNCTION fn_calcular_promedio_estudiante(p_id_estudiante INT) 
RETURNS DECIMAL(4,2)
DETERMINISTIC
BEGIN
    DECLARE v_promedio DECIMAL(4,2);
    
    SELECT AVG(nota) INTO v_promedio
    FROM CALIFICACION
    WHERE id_estudiante = p_id_estudiante;
    
    RETURN IFNULL(v_promedio, 0);
END //

-- Función para verificar asistencia mínima
CREATE FUNCTION fn_verificar_asistencia_minima(p_id_estudiante INT, p_porcentaje_minimo INT) 
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE v_porcentaje_asistencia DECIMAL(5,2);
    
    SELECT 
        (SUM(CASE WHEN presente THEN 1 ELSE 0 END) / COUNT(*)) * 100 INTO v_porcentaje_asistencia
    FROM ASISTENCIA
    WHERE id_estudiante = p_id_estudiante
    AND fecha BETWEEN DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AND CURDATE();
    
    RETURN IFNULL(v_porcentaje_asistencia, 100) >= p_porcentaje_minimo;
END //

DELIMITER ;
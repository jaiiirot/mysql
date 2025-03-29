DELIMITER //

-- Trigger para actualizar inscripción cuando cambia el curso de un estudiante
CREATE TRIGGER tr_actualizar_inscripcion
AFTER UPDATE ON ESTUDIANTE
FOR EACH ROW
BEGIN
    IF NEW.id_curso != OLD.id_curso THEN
        -- Marcar la inscripción anterior como inactiva
        UPDATE INSCRIPCION 
        SET estado = 'Inactivo'
        WHERE id_estudiante = NEW.id_estudiante AND estado = 'Activo';
        
        -- Crear nueva inscripción
        INSERT INTO INSCRIPCION (id_estudiante, id_curso, fecha_inscripcion, estado)
        VALUES (NEW.id_estudiante, NEW.id_curso, CURDATE(), 'Activo');
    END IF;
END //

-- Trigger para validar calificación antes de insertar
CREATE TRIGGER tr_validar_calificacion
BEFORE INSERT ON CALIFICACION
FOR EACH ROW
BEGIN
    -- Verificar que el estudiante pertenece al curso
    DECLARE v_curso_estudiante INT;
    DECLARE v_curso_materia INT;  -- Todas las variables se declaran al inicio
    
    SELECT id_curso INTO v_curso_estudiante 
    FROM ESTUDIANTE 
    WHERE id_estudiante = NEW.id_estudiante;
    
    -- Verificar que la materia pertenece al curso
    SELECT id_curso INTO v_curso_materia 
    FROM MATERIA 
    WHERE id_materia = NEW.id_materia;
    
    -- Validaciones
    IF v_curso_estudiante IS NULL THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'El estudiante no existe';
    ELSEIF v_curso_estudiante != NEW.id_curso THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'El estudiante no pertenece al curso especificado';
    ELSEIF v_curso_materia IS NULL THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'La materia no existe';
    ELSEIF v_curso_materia != NEW.id_curso THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'La materia no pertenece al curso especificado';
    END IF;
END //

DELIMITER ;
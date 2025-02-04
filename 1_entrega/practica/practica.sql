USE secundario;

-- Consultar información combinando todas las tablas
SELECT 
    e.id_estudiante, e.nombre AS estudiante_nombre, e.apellido AS estudiante_apellido, e.dni AS estudiante_dni, e.fecha_nacimiento,
    t.nombre AS tutor_nombre, t.apellido AS tutor_apellido, t.telefono AS tutor_telefono,
    c.año AS curso_año, c.division AS curso_division,
    p.nombre AS profesor_nombre, p.apellido AS profesor_apellido,
    m.nombre AS materia_nombre,
    i.fecha_inscripcion,
    cal.nota, cal.fecha_evaluacion
FROM Estudiantes e
JOIN Inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN Cursos c ON i.id_curso = c.id_curso
JOIN Tutores t ON c.id_tutor = t.id_tutor
JOIN Materias m ON c.id_curso = m.id_curso
JOIN Profesores p ON m.id_profesor = p.id_profesor
LEFT JOIN Calificaciones cal ON e.id_estudiante = cal.id_estudiante AND m.id_materia = cal.id_materia
ORDER BY e.id_estudiante, m.id_materia;

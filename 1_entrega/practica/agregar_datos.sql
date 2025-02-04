USE secundario;

-- Insertar datos en Tutores
INSERT INTO
    Tutores (
        dni,
        nombre,
        apellido,
        telefono
    )
VALUES (
        30111222,
        'Carlos',
        'Pérez',
        '1122334455'
    ),
    (
        30222333,
        'María',
        'González',
        '2233445566'
    ),
    (
        30333444,
        'Javier',
        'López',
        '3344556677'
    ),
    (
        30444555,
        'Ana',
        'Martínez',
        '4455667788'
    ),
    (
        30555666,
        'Luis',
        'Rodríguez',
        '5566778899'
    ),
    (
        30666777,
        'Elena',
        'Fernández',
        '6677889900'
    ),
    (
        30777888,
        'Pablo',
        'Sánchez',
        '7788990011'
    ),
    (
        30888999,
        'Lucía',
        'Ramírez',
        '8899001122'
    );

-- Insertar datos en Estudiantes
INSERT INTO
    Estudiantes (
        dni,
        nombre,
        apellido,
        fecha_nacimiento,
        telefono
    )
VALUES (
        40111222,
        'Juan',
        'García',
        '2008-05-10',
        '9988776655'
    ),
    (
        40222333,
        'Sofía',
        'Fernández',
        '2007-11-20',
        '8877665544'
    ),
    (
        40333444,
        'Martín',
        'López',
        '2008-03-15',
        '7766554433'
    ),
    (
        40444555,
        'Camila',
        'Martínez',
        '2007-09-25',
        '6655443322'
    ),
    (
        40555666,
        'Lucas',
        'Rodríguez',
        '2008-06-30',
        '5544332211'
    ),
    (
        40666777,
        'Valentina',
        'Gómez',
        '2007-02-18',
        '4433221100'
    ),
    (
        40777888,
        'Mateo',
        'Sánchez',
        '2008-12-05',
        '3322110099'
    ),
    (
        40888999,
        'Isabella',
        'Ramírez',
        '2007-07-12',
        '2211009988'
    );

-- Insertar datos en Cursos
INSERT INTO
    Cursos (año, division, id_tutor)
VALUES (1, 1, 1),
    (1, 2, 2),
    (2, 1, 3),
    (2, 2, 4),
    (3, 1, 5),
    (3, 2, 6),
    (4, 1, 7),
    (4, 2, 8);

-- Insertar datos en Profesores
INSERT INTO
    Profesores (
        dni,
        nombre,
        apellido,
        telefono
    )
VALUES (
        50111222,
        'Ricardo',
        'Alonso',
        '1234567890'
    ),
    (
        50222333,
        'Gabriela',
        'Méndez',
        '2345678901'
    ),
    (
        50333444,
        'Andrés',
        'Torres',
        '3456789012'
    ),
    (
        50444555,
        'Laura',
        'Domínguez',
        '4567890123'
    ),
    (
        50555666,
        'Fernando',
        'Silva',
        '5678901234'
    ),
    (
        50666777,
        'Patricia',
        'Herrera',
        '6789012345'
    ),
    (
        50777888,
        'Jorge',
        'Rivas',
        '7890123456'
    ),
    (
        50888999,
        'Natalia',
        'Castro',
        '8901234567'
    );

-- Insertar datos en Materias
INSERT INTO
    Materias (nombre, id_curso, id_profesor)
VALUES ('Matemáticas', 1, 1),
    ('Lengua', 2, 2),
    ('Historia', 3, 3),
    ('Geografía', 4, 4),
    ('Biología', 5, 5),
    ('Física', 6, 6),
    ('Química', 7, 7),
    ('Educación Física', 8, 8);

-- Insertar datos en Calificaciones
INSERT INTO
    Calificaciones (
        id_estudiante,
        id_materia,
        id_profesor,
        nota,
        fecha_evaluacion
    )
VALUES (1, 1, 1, 8.5, '2024-03-01'),
    (2, 2, 2, 7.2, '2024-03-02'),
    (3, 3, 3, 9.0, '2024-03-03'),
    (4, 4, 4, 6.8, '2024-03-04'),
    (5, 5, 5, 7.5, '2024-03-05'),
    (6, 6, 6, 8.0, '2024-03-06'),
    (7, 7, 7, 9.3, '2024-03-07'),
    (8, 8, 8, 7.8, '2024-03-08');
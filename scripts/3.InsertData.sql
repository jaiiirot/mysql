USE SecundariaTumiri;

-- 1. INSERCIÓN DE TURNOS
INSERT INTO TURNO (nombre, entrada, salida) VALUES
('Mañana', '07:30:00', '12:30:00'),
('Tarde', '13:00:00', '18:00:00'),
('Noche', '18:30:00', '22:30:00'),
('Turno A', '08:00:00', '16:00:00');

-- 2. INSERCIÓN DE TUTORES (20 tutores)
INSERT INTO TUTOR (dni, nombre, apellido, telefono, email) VALUES
('30123456', 'Carlos', 'Gómez', '1134567890', 'carlos.gomez@secundaria.edu.ar'),
('28456789', 'Ana', 'López', '1145678901', 'ana.lopez@secundaria.edu.ar'),
('29567890', 'Luis', 'Martínez', '1156789012', 'luis.martinez@secundaria.edu.ar'),
('32678901', 'María', 'Rodríguez', '1167890123', 'maria.rodriguez@secundaria.edu.ar'),
('33789012', 'Juan', 'Pérez', '1178901234', 'juan.perez@secundaria.edu.ar'),
('34890123', 'Laura', 'García', '1189012345', 'laura.garcia@secundaria.edu.ar'),
('35901234', 'Pedro', 'Sánchez', '1190123456', 'pedro.sanchez@secundaria.edu.ar'),
('26123456', 'Sofía', 'Fernández', '1101234567', 'sofia.fernandez@secundaria.edu.ar'),
('27234567', 'Diego', 'González', '1112345678', 'diego.gonzalez@secundaria.edu.ar'),
('28345678', 'Valeria', 'Díaz', '1123456789', 'valeria.diaz@secundaria.edu.ar'),
('29456789', 'Javier', 'Romero', '1134567890', 'javier.romero@gmail.com'),
('30567890', 'Lucía', 'Álvarez', '1145678901', 'lucia.alvarez@hotmail.com'),
('31678901', 'Martín', 'Torres', '1156789012', 'martin.torres@yahoo.com'),
('32789012', 'Camila', 'Flores', '1167890123', 'camila.flores@secundaria.edu.ar'),
('33890123', 'Gabriel', 'Benítez', '1178901234', 'gabriel.benitez@secundaria.edu.ar'),
('34901234', 'Florencia', 'Acosta', '1189012345', 'florencia.acosta@secundaria.edu.ar'),
('35012345', 'Ricardo', 'Medina', '1190123456', 'ricardo.medina@secundaria.edu.ar'),
('36123456', 'Paula', 'Herrera', '1101234567', 'paula.herrera@secundaria.edu.ar'),
('37234567', 'Fernando', 'Rojas', '1112345678', 'fernando.rojas@secundaria.edu.ar'),
('38345678', 'Carolina', 'Méndez', '1123456789', 'carolina.mendez@secundaria.edu.ar');

-- 3. INSERCIÓN DE CURSOS (18 cursos - 3 por año, 1 por turno)
INSERT INTO CURSO (año, division, id_turno, id_tutor) VALUES
-- 1er año
(1, 1, 1, 1), (1, 2, 2, 2), (1, 3, 4, 3),
-- 2do año
(2, 1, 1, 4), (2, 2, 2, 5), (2, 3, 4, 6),
-- 3er año
(3, 1, 1, 7), (3, 2, 2, 8), (3, 3, 4, 9),
-- 4to año
(4, 1, 1, 10), (4, 2, 2, 11), (4, 3, 4, 12),
-- 5to año
(5, 1, 1, 13), (5, 2, 2, 14), (5, 3, 4, 15),
-- 6to año
(6, 1, 1, 16), (6, 2, 2, 17), (6, 3, 3, 18);  -- Único curso de noche

-- 4. INSERCIÓN DE PROFESORES (30 profesores)
INSERT INTO PROFESOR (dni, nombre, apellido, telefono, email) VALUES
('20123456', 'Roberto', 'Silva', '1145678901', 'roberto.silva@secundaria.edu.ar'),
('21234567', 'Claudia', 'Morales', '1156789012', 'claudia.morales@secundaria.edu.ar'),
('22345678', 'Oscar', 'Vega', '1167890123', 'oscar.vega@secundaria.edu.ar'),
('23456789', 'Patricia', 'Castro', '1178901234', 'patricia.castro@secundaria.edu.ar'),
('24567890', 'Hugo', 'Ortiz', '1189012345', 'hugo.ortiz@secundaria.edu.ar'),
('25678901', 'Silvia', 'Ríos', '1190123456', 'silvia.rios@secundaria.edu.ar'),
('26789012', 'Raúl', 'Molina', '1101234567', 'raul.molina@secundaria.edu.ar'),
('27890123', 'Verónica', 'Suárez', '1112345678', 'veronica.suarez@secundaria.edu.ar'),
('28901234', 'Gustavo', 'Aguirre', '1123456789', 'gustavo.aguirre@secundaria.edu.ar'),
('30012345', 'Natalia', 'Ponce', '1134567890', 'natalia.ponce@secundaria.edu.ar'),
('31123456', 'Eduardo', 'Luna', '1145678901', 'eduardo.luna@gmail.com'),
('32234567', 'Graciela', 'Farías', '1156789012', 'graciela.farias@hotmail.com'),
('33345678', 'Daniel', 'Córdoba', '1167890123', 'daniel.cordoba@yahoo.com'),
('34456789', 'Mariana', 'Juárez', '1178901234', 'mariana.juarez@secundaria.edu.ar'),
('35567890', 'Pablo', 'Navarro', '1189012345', 'pablo.navarro@secundaria.edu.ar'),
('36678901', 'Liliana', 'Miranda', '1190123456', 'liliana.miranda@secundaria.edu.ar'),
('37789012', 'Sergio', 'Campos', '1101234567', 'sergio.campos@secundaria.edu.ar'),
('38890123', 'Analía', 'Vargas', '1112345678', 'analia.vargas@secundaria.edu.ar'),
('39901234', 'Federico', 'Ledesma', '1123456789', 'federico.ledesma@secundaria.edu.ar'),
('40012345', 'Gabriela', 'Ferreyra', '1134567890', 'gabriela.ferreyra@secundaria.edu.ar'),
('41123456', 'José', 'Montenegro', '1145678901', 'jose.montenegro@secundaria.edu.ar'),
('42234567', 'Cecilia', 'Bustamante', '1156789012', 'cecilia.bustamante@secundaria.edu.ar'),
('43345678', 'Alejandro', 'Paz', '1167890123', 'alejandro.paz@secundaria.edu.ar'),
('44456789', 'Viviana', 'Roldán', '1178901234', 'viviana.roldan@secundaria.edu.ar'),
('45567890', 'Marcelo', 'Andrade', '1189012345', 'marcelo.andrade@secundaria.edu.ar'),
('46678901', 'Romina', 'Quiroga', '1190123456', 'romina.quiroga@secundaria.edu.ar'),
('47789012', 'Facundo', 'Giménez', '1101234567', 'facundo.gimenez@secundaria.edu.ar'),
('48890123', 'Lorena', 'Santillán', '1112345678', 'lorena.santillan@secundaria.edu.ar'),
('49901234', 'Hernán', 'Mansilla', '1123456789', 'hernan.mansilla@secundaria.edu.ar'),
('50012345', 'Daniela', 'Aravena', '1134567890', 'daniela.aravena@secundaria.edu.ar');

-- 5. INSERCIÓN DE MATERIAS (6 materias por año, algunas compartidas)
INSERT INTO MATERIA (nombre, id_curso, id_profesor) VALUES
-- Materias de 1er año
('Matemática I', 1, 1), ('Lengua y Literatura I', 1, 2), ('Ciencias Naturales I', 1, 3),
('Historia I', 1, 4), ('Geografía I', 1, 5), ('Inglés I', 1, 6),
('Matemática I', 2, 7), ('Lengua y Literatura I', 2, 8), ('Ciencias Naturales I', 2, 9),
('Historia I', 2, 10), ('Geografía I', 2, 11), ('Inglés I', 2, 12),
('Matemática I', 3, 13), ('Lengua y Literatura I', 3, 14), ('Ciencias Naturales I', 3, 15),
('Historia I', 3, 16), ('Geografía I', 3, 17), ('Inglés I', 3, 18),

-- Materias de 2do año
('Matemática II', 4, 1), ('Lengua y Literatura II', 4, 2), ('Física I', 4, 3),
('Historia II', 4, 4), ('Geografía II', 4, 5), ('Inglés II', 4, 6),
('Matemática II', 5, 7), ('Lengua y Literatura II', 5, 8), ('Física I', 5, 9),
('Historia II', 5, 10), ('Geografía II', 5, 11), ('Inglés II', 5, 12),
('Matemática II', 6, 13), ('Lengua y Literatura II', 6, 14), ('Física I', 6, 15),
('Historia II', 6, 16), ('Geografía II', 6, 17), ('Inglés II', 6, 18),

-- Materias de 3er año
('Matemática III', 7, 19), ('Lengua y Literatura III', 7, 20), ('Química I', 7, 21),
('Historia III', 7, 22), ('Educación Cívica', 7, 23), ('Inglés III', 7, 24),
('Matemática III', 8, 25), ('Lengua y Literatura III', 8, 26), ('Química I', 8, 27),
('Historia III', 8, 28), ('Educación Cívica', 8, 29), ('Inglés III', 8, 30),
('Matemática III', 9, 1), ('Lengua y Literatura III', 9, 2), ('Química I', 9, 3),
('Historia III', 9, 4), ('Educación Cívica', 9, 5), ('Inglés III', 9, 6),

-- Materias de 4to año (continúa con el mismo patrón...)
('Matemática IV', 10, 7), ('Lengua y Literatura IV', 10, 8), ('Física II', 10, 9),
('Historia IV', 10, 10), ('Economía', 10, 11), ('Inglés IV', 10, 12),
('Matemática IV', 11, 13), ('Lengua y Literatura IV', 11, 14), ('Física II', 11, 15),
('Historia IV', 11, 16), ('Economía', 11, 17), ('Inglés IV', 11, 18),
('Matemática IV', 12, 19), ('Lengua y Literatura IV', 12, 20), ('Física II', 12, 21),
('Historia IV', 12, 22), ('Economía', 12, 23), ('Inglés IV', 12, 24),

-- Materias de 5to año
('Matemática V', 13, 25), ('Lengua y Literatura V', 13, 26), ('Química II', 13, 27),
('Historia V', 13, 28), ('Filosofía', 13, 29), ('Inglés V', 13, 30),
('Matemática V', 14, 1), ('Lengua y Literatura V', 14, 2), ('Química II', 14, 3),
('Historia V', 14, 4), ('Filosofía', 14, 5), ('Inglés V', 14, 6),
('Matemática V', 15, 7), ('Lengua y Literatura V', 15, 8), ('Química II', 15, 9),
('Historia V', 15, 10), ('Filosofía', 15, 11), ('Inglés V', 15, 12),

-- Materias de 6to año
('Matemática VI', 16, 13), ('Lengua y Literatura VI', 16, 14), ('Biología', 16, 15),
('Historia VI', 16, 16), ('Psicología', 16, 17), ('Inglés VI', 16, 18),
('Matemática VI', 17, 19), ('Lengua y Literatura VI', 17, 20), ('Biología', 17, 21),
('Historia VI', 17, 22), ('Psicología', 17, 23), ('Inglés VI', 17, 24),
('Matemática VI', 18, 25), ('Lengua y Literatura VI', 18, 26), ('Biología', 18, 27),
('Historia VI', 18, 28), ('Psicología', 18, 29), ('Inglés VI', 18, 30);

-- 6. INSERCIÓN DE ESTUDIANTES (100 estudiantes distribuidos en los cursos)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
-- Curso 1 (1er año, mañana, 6 estudiantes)
('41123456', 'Martín', 'Gutiérrez', 1, '1145678901', 'martin.gutierrez@secundaria.edu.ar'),
('42234567', 'Lucía', 'Hernández', 1, '1156789012', 'lucia.hernandez@secundaria.edu.ar'),
('43345678', 'Facundo', 'Dominguez', 1, '1167890123', 'facundo.dominguez@secundaria.edu.ar'),
('44456789', 'Valentina', 'Iglesias', 1, '1178901234', 'valentina.iglesias@secundaria.edu.ar'),
('45567890', 'Thiago', 'Ferreyra', 1, '1189012345', 'thiago.ferreyra@secundaria.edu.ar'),
('46678901', 'Sofía', 'Ramírez', 1, '1190123456', 'sofia.ramirez@secundaria.edu.ar'),

-- Curso 2 (1er año, tarde, 6 estudiantes)
('47789012', 'Benjamín', 'Acosta', 2, '1101234567', 'benjamin.acosta@secundaria.edu.ar'),
('48890123', 'Emma', 'Morales', 2, '1112345678', 'emma.morales@secundaria.edu.ar'),
('49901234', 'Lautaro', 'Rojas', 2, '1123456789', 'lautaro.rojas@secundaria.edu.ar'),
('50012345', 'Mía', 'Silva', 2, '1134567890', 'mia.silva@secundaria.edu.ar'),
('51123456', 'Santino', 'Mendoza', 2, '1145678901', 'santino.mendoza@secundaria.edu.ar'),
('52234567', 'Isabella', 'Luna', 2, '1156789012', 'isabella.luna@secundaria.edu.ar'),

-- Curso 3 (1er año, turno A, 6 estudiantes)
('53345678', 'Bautista', 'Castro', 3, '1167890123', 'bautista.castro@secundaria.edu.ar'),
('54456789', 'Catalina', 'Vega', 3, '1178901234', 'catalina.vega@secundaria.edu.ar'),
('55567890', 'Vicente', 'Paz', 3, '1189012345', 'vicente.paz@secundaria.edu.ar'),
('56678901', 'Renata', 'Ortiz', 3, '1190123456', 'renata.ortiz@secundaria.edu.ar'),
('57789012', 'Juan Cruz', 'Ríos', 3, '1101234567', 'juancruz.rios@secundaria.edu.ar'),
('58890123', 'Morena', 'Suárez', 3, '1112345678', 'morena.suarez@secundaria.edu.ar'),

-- Continúa con el mismo patrón para los demás cursos...
-- Curso 4 (2do año, mañana, 6 estudiantes)
('59901234', 'Tobías', 'Aguirre', 4, '1123456789', 'tobias.aguirre@secundaria.edu.ar'),
('60012345', 'Olivia', 'Ponce', 4, '1134567890', 'olivia.ponce@secundaria.edu.ar'),
('61123456', 'Joaquín', 'Farías', 4, '1145678901', 'joaquin.farias@secundaria.edu.ar'),
('62234567', 'Martina', 'Córdoba', 4, '1156789012', 'martina.cordoba@secundaria.edu.ar'),
('63345678', 'Felipe', 'Juárez', 4, '1167890123', 'felipe.juarez@secundaria.edu.ar'),
('64456789', 'Victoria', 'Navarro', 4, '1178901234', 'victoria.navarro@secundaria.edu.ar'),

-- Curso 5 (2do año, tarde, 6 estudiantes)
('65567890', 'Dante', 'Miranda', 5, '1189012345', 'dante.miranda@secundaria.edu.ar'),
('66678901', 'Julieta', 'Campos', 5, '1190123456', 'julieta.campos@secundaria.edu.ar'),
('67789012', 'Ignacio', 'Vargas', 5, '1101234567', 'ignacio.vargas@secundaria.edu.ar'),
('68890123', 'Lola', 'Ledesma', 5, '1112345678', 'lola.ledesma@secundaria.edu.ar'),
('69901234', 'Matías', 'Ferreyra', 5, '1123456789', 'matias.ferreyra@secundaria.edu.ar'),
('70012345', 'Ambar', 'Montenegro', 5, '1134567890', 'ambar.montenegro@secundaria.edu.ar'),

-- Curso 6 (2do año, turno A, 6 estudiantes)
('71123456', 'Lorenzo', 'Bustamante', 6, '1145678901', 'lorenzo.bustamante@secundaria.edu.ar'),
('72234567', 'Alma', 'Paz', 6, '1156789012', 'alma.paz@secundaria.edu.ar'),
('73345678', 'Agustín', 'Roldán', 6, '1167890123', 'agustin.roldan@secundaria.edu.ar'),
('74456789', 'Abril', 'Andrade', 6, '1178901234', 'abril.andrade@secundaria.edu.ar'),
('75567890', 'Simón', 'Quiroga', 6, '1189012345', 'simon.quiroga@secundaria.edu.ar'),
('76678901', 'Rocío', 'Giménez', 6, '1190123456', 'rocio.gimenez@secundaria.edu.ar'),

-- Curso 7 (3er año, mañana, 6 estudiantes)
('77789012', 'Tiziano', 'Santillán', 7, '1101234567', 'tiziano.santillan@secundaria.edu.ar'),
('78890123', 'Mora', 'Mansilla', 7, '1112345678', 'mora.mansilla@secundaria.edu.ar'),
('79901234', 'Gael', 'Aravena', 7, '1123456789', 'gael.aravena@secundaria.edu.ar'),
('80012345', 'Celeste', 'Gómez', 7, '1134567890', 'celeste.gomez@secundaria.edu.ar'),
('81123456', 'Nicolás', 'López', 7, '1145678901', 'nicolas.lopez@secundaria.edu.ar'),
('82234567', 'Antonella', 'Martínez', 7, '1156789012', 'antonella.martinez@secundaria.edu.ar'),

-- Curso 8 (3er año, tarde, 6 estudiantes)
('83345678', 'Lucio', 'Rodríguez', 8, '1167890123', 'lucio.rodriguez@secundaria.edu.ar'),
('84456789', 'Aylén', 'Pérez', 8, '1178901234', 'aylen.perez@secundaria.edu.ar'),
('85567890', 'Ezequiel', 'García', 8, '1189012345', 'ezequiel.garcia@secundaria.edu.ar'),
('86678901', 'Milagros', 'Sánchez', 8, '1190123456', 'milagros.sanchez@secundaria.edu.ar'),
('87789012', 'Axel', 'Fernández', 8, '1101234567', 'axel.fernandez@secundaria.edu.ar'),
('88890123', 'Zoe', 'González', 8, '1112345678', 'zoe.gonzalez@secundaria.edu.ar'),

-- Curso 9 (3er año, turno A, 6 estudiantes)
('89901234', 'Ian', 'Díaz', 9, '1123456789', 'ian.diaz@secundaria.edu.ar'),
('90012345', 'Maite', 'Romero', 9, '1134567890', 'maite.romero@secundaria.edu.ar'),
('91123456', 'Luciano', 'Álvarez', 9, '1145678901', 'luciano.alvarez@secundaria.edu.ar'),
('92234567', 'Selena', 'Torres', 9, '1156789012', 'selena.torres@secundaria.edu.ar'),
('93345678', 'Rafael', 'Flores', 9, '1167890123', 'rafael.flores@secundaria.edu.ar'),
('94456789', 'Jazmín', 'Benítez', 9, '1178901234', 'jazmin.benitez@secundaria.edu.ar'),

-- Curso 10 (4to año, mañana, 6 estudiantes)
('95567890', 'Maximiliano', 'Acosta', 10, '1189012345', 'maximiliano.acosta@secundaria.edu.ar'),
('96678901', 'Guadalupe', 'Medina', 10, '1190123456', 'guadalupe.medina@secundaria.edu.ar'),
('97789012', 'Bruno', 'Herrera', 10, '1101234567', 'bruno.herrera@secundaria.edu.ar'),
('98890123', 'Abril', 'Rojas', 10, '1112345678', 'abril.rojas@secundaria.edu.ar'),
('99901234', 'Franco', 'Méndez', 10, '1123456789', 'franco.mendez@secundaria.edu.ar'),
('100012345', 'Kiara', 'Gutiérrez', 10, '1134567890', 'kiara.gutierrez@secundaria.edu.ar'),

-- Curso 11 (4to año, tarde, 6 estudiantes)
('101123456', 'Jeremías', 'Hernández', 11, '1145678901', 'jeremias.hernandez@secundaria.edu.ar'),
('102234567', 'Florencia', 'Dominguez', 11, '1156789012', 'florencia.dominguez@secundaria.edu.ar'),
('103345678', 'Alan', 'Iglesias', 11, '1167890123', 'alan.iglesias@secundaria.edu.ar'),
('104456789', 'Antonela', 'Ferreyra', 11, '1178901234', 'antonela.ferreyra@secundaria.edu.ar'),
('105567890', 'Kevin', 'Ramírez', 11, '1189012345', 'kevin.ramirez@secundaria.edu.ar'),
('106678901', 'Candelaria', 'Morales', 11, '1190123456', 'candelaria.morales@secundaria.edu.ar'),

-- Curso 12 (4to año, turno A, 4 estudiantes)
('107789012', 'Brian', 'Silva', 12, '1101234567', 'brian.silva@secundaria.edu.ar'),
('108890123', 'Micaela', 'Mendoza', 12, '1112345678', 'micaela.mendoza@secundaria.edu.ar'),
('109901234', 'Leonel', 'Luna', 12, '1123456789', 'leonel.luna@secundaria.edu.ar'),
('110012345', 'Luz', 'Castro', 12, '1134567890', 'luz.castro@secundaria.edu.ar'),

-- Curso 13 (5to año, mañana, 6 estudiantes)
('111123456', 'Gonzalo', 'Vega', 13, '1145678901', 'gonzalo.vega@secundaria.edu.ar'),
('112234567', 'Agustina', 'Paz', 13, '1156789012', 'agustina.paz@secundaria.edu.ar'),
('113345678', 'Marcos', 'Ortiz', 13, '1167890123', 'marcos.ortiz@secundaria.edu.ar'),
('114456789', 'Carolina', 'Ríos', 13, '1178901234', 'carolina.rios@secundaria.edu.ar'),
('115567890', 'Elias', 'Suárez', 13, '1189012345', 'elias.suarez@secundaria.edu.ar'),
('116678901', 'Valentino', 'Aguirre', 13, '1190123456', 'valentino.aguirre@secundaria.edu.ar'),

-- Curso 14 (5to año, tarde, 6 estudiantes)
('117789012', 'Camila', 'Ponce', 14, '1101234567', 'camila.ponce@secundaria.edu.ar'),
('118890123', 'Thiago', 'Farías', 14, '1112345678', 'thiago.farias@secundaria.edu.ar'),
('119901234', 'Bianca', 'Córdoba', 14, '1123456789', 'bianca.cordoba@secundaria.edu.ar'),
('120012345', 'Emiliano', 'Juárez', 14, '1134567890', 'emiliano.juarez@secundaria.edu.ar'),
('121123456', 'Catalina', 'Navarro', 14, '1145678901', 'catalina.navarro@secundaria.edu.ar'),
('122234567', 'Julián', 'Miranda', 14, '1156789012', 'julian.miranda@secundaria.edu.ar'),

-- Curso 15 (5to año, turno A, 4 estudiantes)
('123345678', 'Delfina', 'Campos', 15, '1167890123', 'delfina.campos@secundaria.edu.ar'),
('124456789', 'Tomás', 'Vargas', 15, '1178901234', 'tomas.vargas@secundaria.edu.ar'),
('125567890', 'Ariana', 'Ledesma', 15, '1189012345', 'ariana.ledesma@secundaria.edu.ar'),
('126678901', 'Nicolás', 'Ferreyra', 15, '1190123456', 'nicolas.ferreyra@secundaria.edu.ar'),

-- Curso 16 (6to año, mañana, 6 estudiantes)
('127789012', 'Santiago', 'Montenegro', 16, '1101234567', 'santiago.montenegro@secundaria.edu.ar'),
('128890123', 'Martina', 'Bustamante', 16, '1112345678', 'martina.bustamante@secundaria.edu.ar'),
('129901234', 'Facundo', 'Paz', 16, '1123456789', 'facundo.paz@secundaria.edu.ar'),
('130012345', 'Luciana', 'Roldán', 16, '1134567890', 'luciana.roldan@secundaria.edu.ar'),
('131123456', 'Juan Pablo', 'Andrade', 16, '1145678901', 'juanpablo.andrade@secundaria.edu.ar'),
('132234567', 'Victoria', 'Quiroga', 16, '1156789012', 'victoria.quiroga@secundaria.edu.ar'),

-- Curso 17 (6to año, tarde, 6 estudiantes)
('133345678', 'Lautaro', 'Giménez', 17, '1167890123', 'lautaro.gimenez@secundaria.edu.ar'),
('134456789', 'Julieta', 'Santillán', 17, '1178901234', 'julieta.santillan@secundaria.edu.ar'),
('135567890', 'Matías', 'Mansilla', 17, '1189012345', 'matias.mansilla@secundaria.edu.ar'),
('136678901', 'Valeria', 'Aravena', 17, '1190123456', 'valeria.aravena@secundaria.edu.ar'),
('137789012', 'Juan Ignacio', 'Gómez', 17, '1101234567', 'juanignacio.gomez@secundaria.edu.ar'),
('138890123', 'Camila', 'López', 17, '1112345678', 'camila.lopez@secundaria.edu.ar'),

-- Curso 18 (6to año, noche, 4 estudiantes)
('139901234', 'Franco', 'Martínez', 18, '1123456789', 'franco.martinez@secundaria.edu.ar'),
('140012345', 'Agustina', 'Rodríguez', 18, '1134567890', 'agustina.rodriguez@secundaria.edu.ar'),
('141123456', 'Gastón', 'Pérez', 18, '1145678901', 'gaston.perez@secundaria.edu.ar'),
('142234567', 'Florencia', 'García', 18, '1156789012', 'florencia.garcia@secundaria.edu.ar');

-- 7. INSERCIÓN DE INSCRIPCIONES (una por estudiante, activas)
INSERT INTO INSCRIPCION (id_estudiante, id_curso, fecha_inscripcion, estado)
SELECT id_estudiante, id_curso, '2023-03-01', 'Activo' FROM ESTUDIANTE;

-- 8. INSERCIÓN DE ASISTENCIAS (ejemplo para marzo 2023)
-- Generar asistencias aleatorias (85% de presencia)
INSERT INTO ASISTENCIA (id_estudiante, id_curso, fecha, presente)
SELECT 
    e.id_estudiante, 
    e.id_curso,
    DATE_ADD('2023-03-01', INTERVAL seq.day DAY) AS fecha,
    IF(RAND() < 0.85, TRUE, FALSE) AS presente
FROM ESTUDIANTE e
JOIN (
    SELECT 0 AS day UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 6 UNION
    SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION SELECT 13 UNION
    SELECT 14 UNION SELECT 15 UNION SELECT 16 UNION SELECT 17 UNION SELECT 20 UNION
    SELECT 21 UNION SELECT 22 UNION SELECT 23 UNION SELECT 24 UNION SELECT 27 UNION
    SELECT 28 UNION SELECT 29 UNION SELECT 30
) seq
WHERE seq.day BETWEEN 0 AND 30;

-- 9. INSERCIÓN DE CALIFICACIONES
INSERT INTO CALIFICACION (id_estudiante, id_materia, id_profesor, id_curso, nota, fecha_evaluacion)
SELECT 
    e.id_estudiante,
    m.id_materia,
    m.id_profesor,
    e.id_curso,
    CASE 
        WHEN RAND() <= 0.6 THEN FLOOR(6 + RAND() * 5) -- 60% aprobados (6-10)
        WHEN RAND() <= 0.04 THEN FLOOR(1 + RAND() * 3) -- 4% reprobados (1-3)
        ELSE FLOOR(4 + RAND() * 5) -- 36% restante (4-8)
    END AS nota,
    DATE_ADD('2023-03-01', INTERVAL FLOOR(RAND() * 90) DAY) AS fecha_evaluacion
FROM ESTUDIANTE e
JOIN MATERIA m ON e.id_curso = m.id_curso
WHERE RAND() <= 0.9; -- 70% de probabilidad de que un estudiante tenga calificación en una materia

-- 10. INSERCIÓN DE EVENTOS
INSERT INTO EVENTO (nombre, descripcion, fecha_inicio, fecha_fin, id_curso) VALUES
('Reunión de padres', 'Reunión informativa para padres de 1er año', '2023-03-15', NULL, 1),
('Feria de Ciencias', 'Presentación de proyectos científicos de los estudiantes', '2023-05-20', '2023-05-22', NULL),
('Acto Día de la Bandera', 'Celebración del Día de la Bandera Argentina', '2023-06-20', NULL, NULL),
('Viaje de estudios 4to año', 'Viaje educativo a Córdoba', '2023-09-10', '2023-09-15', 10),
('Torneo intercolegial', 'Competencia deportiva entre escuelas', '2023-08-05', '2023-08-07', NULL),
('Muestra de Arte', 'Exposición de trabajos artísticos de los estudiantes', '2023-10-15', '2023-10-17', NULL),
('Charla vocacional', 'Orientación para estudiantes de 6to año', '2023-07-25', NULL, 16),
('Campamento 2do año', 'Actividad de integración al aire libre', '2023-04-14', '2023-04-16', 4);

-- 11. INSERCIÓN DE COMUNICADOS
INSERT INTO COMUNICADO (titulo, contenido, id_profesor, id_curso) VALUES
('Cambio de horario', 'A partir del lunes, las clases de 5to año comenzarán 15 minutos más tarde.', 25, 13),
('Materiales necesarios', 'Recordatorio: traer regla, compás y calculadora para la clase de Matemáticas.', 1, 1),
('Suspensión de clases', 'Se informa que el próximo viernes no habrá clases por feriado provincial.', NULL, NULL),
('Requisitos para el viaje', 'Listado de documentos y elementos necesarios para el viaje de estudios.', 10, 10),
('Concurso literario', 'Bases del concurso de cuentos cortos para todos los estudiantes.', 2, NULL),
('Recuperatorio de examen', 'Fechas y horarios para los recuperatorios del primer parcial.', 3, 4),
('Taller de orientación', 'Invitación a taller sobre técnicas de estudio para estudiantes de 3er año.', 20, 7),
('Entrega de boletines', 'Fechas y horarios para la entrega de calificaciones del primer trimestre.', NULL, NULL);

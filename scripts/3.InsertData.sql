USE SecundariaTumiri;

-- Insertar datos en TURNO (4 turnos)
INSERT INTO TURNO (nombre, entrada, salida) VALUES
('Mañana', '07:30:00', '12:30:00'),
('Tarde', '13:00:00', '18:00:00'),
('Noche', '18:30:00', '22:30:00'),
('Turno A', '08:00:00', '16:00:00');

-- Insertar datos en TUTOR (15 tutores)
INSERT INTO TUTOR (dni, nombre, apellido, telefono, email) VALUES
('30123456', 'Carlos', 'Gómez', '1145678910', 'c.gomez@secundaria.edu.ar'),
('32123456', 'Laura', 'Fernández', '1156789012', 'l.fernandez@secundaria.edu.ar'),
('34123456', 'Marcos', 'López', '1167890123', 'm.lopez@gmail.com'),
('36123456', 'Ana', 'Martínez', '1178901234', 'a.martinez@secundaria.edu.ar'),
('38123456', 'Pedro', 'Rodríguez', '1189012345', 'p.rodriguez@hotmail.com'),
('40123456', 'Sofía', 'Pérez', '1190123456', 's.perez@secundaria.edu.ar'),
('42123456', 'Juan', 'González', '1101234567', 'j.gonzalez@yahoo.com'),
('44123456', 'María', 'Sánchez', '1112345678', 'm.sanchez@secundaria.edu.ar'),
('46123456', 'Luis', 'Díaz', '1123456789', 'l.diaz@secundaria.edu.ar'),
('48123456', 'Elena', 'Torres', '1134567890', 'e.torres@gmail.com'),
('50123456', 'Ricardo', 'Ramírez', '1145678901', 'r.ramirez@secundaria.edu.ar'),
('52123456', 'Patricia', 'Flores', '1156789012', 'p.flores@secundaria.edu.ar'),
('54123456', 'Jorge', 'Álvarez', '1167890123', 'j.alvarez@outlook.com'),
('56123456', 'Carmen', 'Ruiz', '1178901234', 'c.ruiz@secundaria.edu.ar'),
('58123456', 'Fernando', 'Hernández', '1189012345', 'f.hernandez@secundaria.edu.ar');

-- Insertar datos en CURSO (15 cursos)
INSERT INTO CURSO (año, division, id_turno, id_tutor) VALUES
(1, 1, 1, 1),
(1, 2, 1, 2),
(2, 1, 1, 3),
(2, 2, 2, 4),
(3, 1, 2, 5),
(3, 2, 2, 6),
(4, 1, 2, 7),
(4, 2, 3, 8),
(5, 1, 3, 9),
(5, 2, 3, 10),
(6, 1, 4, 11),
(6, 2, 4, 12),
(1, 3, 4, 13),
(2, 3, 4, 14),
(3, 3, 1, 15);

-- Insertar datos en PROFESOR (15 profesores)
INSERT INTO PROFESOR (dni, nombre, apellido, telefono, email) VALUES
('20123456', 'Roberto', 'Silva', '1145678911', 'r.silva@secundaria.edu.ar'),
('21123456', 'Mónica', 'Castro', '1156789013', 'm.castro@secundaria.edu.ar'),
('22123456', 'Gabriel', 'Mendoza', '1167890124', 'g.mendoza@gmail.com'),
('23123456', 'Claudia', 'Ortiz', '1178901235', 'c.ortiz@secundaria.edu.ar'),
('24123456', 'Oscar', 'Vega', '1189012346', 'o.vega@hotmail.com'),
('25123456', 'Verónica', 'Ríos', '1190123457', 'v.rios@secundaria.edu.ar'),
('26123456', 'Daniel', 'Paz', '1101234568', 'd.paz@yahoo.com'),
('27123456', 'Silvia', 'Miranda', '1112345679', 's.miranda@secundaria.edu.ar'),
('28123456', 'Hugo', 'Navarro', '1123456780', 'h.navarro@secundaria.edu.ar'),
('29123456', 'Lucía', 'Figueroa', '1134567891', 'l.figueroa@gmail.com'),
('30123457', 'Martín', 'Acosta', '1145678902', 'm.acosta@secundaria.edu.ar'),
('31123456', 'Graciela', 'Medina', '1156789014', 'g.medina@secundaria.edu.ar'),
('32123457', 'Pablo', 'Farías', '1167890125', 'p.farias@outlook.com'),
('33123456', 'Adriana', 'Cáceres', '1178901236', 'a.caceres@secundaria.edu.ar'),
('34123457', 'Raúl', 'Aguirre', '1189012347', 'r.aguirre@secundaria.edu.ar');

-- Insertar datos en ESTUDIANTE (15 estudiantes)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
('40123457', 'Facundo', 'Gutiérrez', 1, '1145678912', 'f.gutierrez@secundaria.edu.ar'),
('41123456', 'Florencia', 'Benítez', 2, '1156789015', 'f.benitez@secundaria.edu.ar'),
('42123457', 'Gonzalo', 'Ponce', 3, '1167890126', 'g.ponce@gmail.com'),
('43123456', 'Valentina', 'Juárez', 4, '1178901237', 'v.juarez@secundaria.edu.ar'),
('44123457', 'Matías', 'Godoy', 5, '1189012348', 'm.godoy@hotmail.com'),
('45123456', 'Camila', 'Molina', 6, '1190123458', 'c.molina@secundaria.edu.ar'),
('46123457', 'Lucas', 'Ferreyra', 7, '1101234569', 'l.ferreyra@yahoo.com'),
('47123456', 'Agustina', 'Domínguez', 8, '1112345680', 'a.dominguez@secundaria.edu.ar'),
('48123457', 'Franco', 'Soria', 9, '1123456781', 'f.soria@secundaria.edu.ar'),
('49123456', 'Julieta', 'Carrizo', 10, '1134567892', 'j.carrizo@gmail.com'),
('50123457', 'Nicolás', 'Campos', 11, '1145678903', 'n.campos@secundaria.edu.ar'),
('51123456', 'Luciana', 'Vázquez', 12, '1156789016', 'l.vazquez@secundaria.edu.ar'),
('52123457', 'Brian', 'Ledesma', 13, '1167890127', 'b.ledesma@outlook.com'),
('53123456', 'Micaela', 'Quiroga', 14, '1178901238', 'm.quiroga@secundaria.edu.ar'),
('54123457', 'Ezequiel', 'Arias', 15, '1189012349', 'e.arias@secundaria.edu.ar');

USE SecundariaTumiri;

-- Agregar estudiantes al 1er año (3 divisiones)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
-- 1er año, división 1 (curso_id = 1)
('41123457', 'Martina', 'García', 1, '1145678913', 'm.garcia@secundaria.edu.ar'),
('42123458', 'Thiago', 'Rodríguez', 1, '1156789016', 't.rodriguez@secundaria.edu.ar'),
('43123459', 'Valentino', 'López', 1, '1167890128', 'v.lopez@gmail.com'),
('44123460', 'Isabella', 'Martínez', 1, '1178901239', 'i.martinez@secundaria.edu.ar'),
('45123461', 'Benjamín', 'Pérez', 1, '1189012350', 'b.perez@hotmail.com'),

-- 1er año, división 2 (curso_id = 2)
('46123462', 'Emma', 'González', 2, '1190123459', 'e.gonzalez@secundaria.edu.ar'),
('47123463', 'Dylan', 'Sánchez', 2, '1101234570', 'd.sanchez@yahoo.com'),
('48123464', 'Mía', 'Díaz', 2, '1112345681', 'm.diaz@secundaria.edu.ar'),
('49123465', 'Lautaro', 'Torres', 2, '1123456782', 'l.torres@secundaria.edu.ar'),
('50123466', 'Sofía', 'Flores', 2, '1134567893', 's.flores@gmail.com'),

-- 1er año, división 3 (curso_id = 13)
('51123467', 'Juan Cruz', 'Álvarez', 13, '1145678904', 'jc.alvarez@secundaria.edu.ar'),
('52123468', 'Renata', 'Ruiz', 13, '1156789017', 'r.ruiz@secundaria.edu.ar'),
('53123469', 'Bautista', 'Hernández', 13, '1167890129', 'b.hernandez@outlook.com'),
('54123470', 'Catalina', 'Fernández', 13, '1178901240', 'c.fernandez@secundaria.edu.ar'),
('55123471', 'Santino', 'Gómez', 13, '1189012351', 's.gomez@secundaria.edu.ar');

-- Agregar estudiantes al 2do año (3 divisiones)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
-- 2do año, división 1 (curso_id = 3)
('56123472', 'Olivia', 'Benítez', 3, '1190123460', 'o.benitez@secundaria.edu.ar'),
('57123473', 'Matías', 'Acosta', 3, '1101234571', 'm.acosta@yahoo.com'),
('58123474', 'Emilia', 'Medina', 3, '1112345682', 'e.medina@secundaria.edu.ar'),
('59123475', 'Tobías', 'Farías', 3, '1123456783', 't.farias@secundaria.edu.ar'),
('60123476', 'Jazmín', 'Cáceres', 3, '1134567894', 'j.caceres@gmail.com'),

-- 2do año, división 2 (curso_id = 4)
('61123477', 'Luca', 'Aguirre', 4, '1145678905', 'l.aguirre@secundaria.edu.ar'),
('62123478', 'Victoria', 'Ponce', 4, '1156789018', 'v.ponce@secundaria.edu.ar'),
('63123479', 'Ian', 'Juárez', 4, '1167890130', 'i.juarez@outlook.com'),
('64123480', 'Antonella', 'Godoy', 4, '1178901241', 'a.godoy@secundaria.edu.ar'),
('65123481', 'Felipe', 'Molina', 4, '1189012352', 'f.molina@secundaria.edu.ar'),

-- 2do año, división 3 (curso_id = 14)
('66123482', 'Amparo', 'Ferreyra', 14, '1190123461', 'a.ferreyra@secundaria.edu.ar'),
('67123483', 'Simón', 'Domínguez', 14, '1101234572', 's.dominguez@yahoo.com'),
('68123484', 'Rocío', 'Soria', 14, '1112345683', 'r.soria@secundaria.edu.ar'),
('69123485', 'Nicolás', 'Carrizo', 14, '1123456784', 'n.carrizo@secundaria.edu.ar'),
('70123486', 'Juliana', 'Campos', 14, '1134567895', 'j.campos@gmail.com');

-- Agregar estudiantes al 3er año (3 divisiones)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
-- 3er año, división 1 (curso_id = 5)
('71123487', 'Maximiliano', 'Vázquez', 5, '1145678906', 'm.vazquez@secundaria.edu.ar'),
('72123488', 'Agustina', 'Ledesma', 5, '1156789019', 'a.ledesma@secundaria.edu.ar'),
('73123489', 'Facundo', 'Quiroga', 5, '1167890131', 'f.quiroga@outlook.com'),
('74123490', 'Milagros', 'Arias', 5, '1178901242', 'm.arias@secundaria.edu.ar'),
('75123491', 'Gael', 'Gutiérrez', 5, '1189012353', 'g.gutierrez@secundaria.edu.ar'),

-- 3er año, división 2 (curso_id = 6)
('76123492', 'Abril', 'Benítez', 6, '1190123462', 'a.benitez@secundaria.edu.ar'),
('77123493', 'Luciano', 'Ponce', 6, '1101234573', 'l.ponce@yahoo.com'),
('78123494', 'Morena', 'Juárez', 6, '1112345684', 'm.juarez@secundaria.edu.ar'),
('79123495', 'Tiziano', 'Godoy', 6, '1123456785', 't.godoy@secundaria.edu.ar'),
('80123496', 'Lola', 'Molina', 6, '1134567896', 'l.molina@gmail.com'),

-- 3er año, división 3 (curso_id = 15)
('81123497', 'Bianca', 'Ferreyra', 15, '1145678907', 'b.ferreyra@secundaria.edu.ar'),
('82123498', 'Joaquín', 'Domínguez', 15, '1156789020', 'j.dominguez@secundaria.edu.ar'),
('83123499', 'Celeste', 'Soria', 15, '1167890132', 'c.soria@outlook.com'),
('84123500', 'Emanuel', 'Carrizo', 15, '1178901243', 'e.carrizo@secundaria.edu.ar'),
('85123501', 'Aylén', 'Campos', 15, '1189012354', 'a.campos@secundaria.edu.ar');

-- Agregar estudiantes al 4to año (2 divisiones)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
-- 4to año, división 1 (curso_id = 7)
('86123502', 'Rafael', 'Vázquez', 7, '1190123463', 'r.vazquez@secundaria.edu.ar'),
('87123503', 'Maite', 'Ledesma', 7, '1101234574', 'm.ledesma@yahoo.com'),
('88123504', 'Axel', 'Quiroga', 7, '1112345685', 'a.quiroga@secundaria.edu.ar'),
('89123505', 'Luana', 'Arias', 7, '1123456786', 'l.arias@secundaria.edu.ar'),
('90123506', 'Rocco', 'Gutiérrez', 7, '1134567897', 'r.gutierrez@gmail.com'),

-- 4to año, división 2 (curso_id = 8)
('91123507', 'Zoe', 'Benítez', 8, '1145678908', 'z.benitez@secundaria.edu.ar'),
('92123508', 'Diego', 'Ponce', 8, '1156789021', 'd.ponce@secundaria.edu.ar'),
('93123509', 'Alma', 'Juárez', 8, '1167890133', 'a.juarez@outlook.com'),
('94123510', 'Leonel', 'Godoy', 8, '1178901244', 'l.godoy@secundaria.edu.ar'),
('95123511', 'Abril', 'Molina', 8, '1189012355', 'a.molina@secundaria.edu.ar');

-- Agregar estudiantes al 5to año (2 divisiones)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
-- 5to año, división 1 (curso_id = 9)
('96123512', 'Bruno', 'Ferreyra', 9, '1190123464', 'b.ferreyra@secundaria.edu.ar'),
('97123513', 'Valeria', 'Domínguez', 9, '1101234575', 'v.dominguez@yahoo.com'),
('98123514', 'Gino', 'Soria', 9, '1112345686', 'g.soria@secundaria.edu.ar'),
('99123515', 'Kiara', 'Carrizo', 9, '1123456787', 'k.carrizo@secundaria.edu.ar'),
('00123516', 'Tomas', 'Campos', 9, '1134567898', 't.campos@gmail.com'),

-- 5to año, división 2 (curso_id = 10)
('01123517', 'Carmela', 'Vázquez', 10, '1145678909', 'c.vazquez@secundaria.edu.ar'),
('02123518', 'Franco', 'Ledesma', 10, '1156789022', 'f.ledesma@secundaria.edu.ar'),
('03123519', 'Ambar', 'Quiroga', 10, '1167890134', 'a.quiroga@outlook.com'),
('04123520', 'Thiago', 'Arias', 10, '1178901245', 't.arias@secundaria.edu.ar'),
('05123521', 'Antonia', 'Gutiérrez', 10, '1189012356', 'a.gutierrez@secundaria.edu.ar');

-- Agregar estudiantes al 6to año (2 divisiones)
INSERT INTO ESTUDIANTE (dni, nombre, apellido, id_curso, telefono, email) VALUES
-- 6to año, división 1 (curso_id = 11)
('06123522', 'Jeremías', 'Benítez', 11, '1190123465', 'j.benitez@secundaria.edu.ar'),
('07123523', 'Mora', 'Ponce', 11, '1101234576', 'm.ponce@yahoo.com'),
('08123524', 'Lautaro', 'Juárez', 11, '1112345687', 'l.juarez@secundaria.edu.ar'),
('09123525', 'Emma', 'Godoy', 11, '1123456788', 'e.godoy@secundaria.edu.ar'),
('10123526', 'Benjamin', 'Molina', 11, '1134567899', 'b.molina@gmail.com'),

-- 6to año, división 2 (curso_id = 12)
('11123527', 'Ámbar', 'Ferreyra', 12, '1145678910', 'a.ferreyra@secundaria.edu.ar'),
('12123528', 'Santino', 'Domínguez', 12, '1156789023', 's.dominguez@secundaria.edu.ar'),
('13123529', 'Renata', 'Soria', 12, '1167890135', 'r.soria@outlook.com'),
('14123530', 'Bautista', 'Carrizo', 12, '1178901246', 'b.carrizo@secundaria.edu.ar'),
('15123531', 'Catalina', 'Campos', 12, '1189012357', 'c.campos@secundaria.edu.ar');


-- Insertar datos en MATERIA (15 materias)
INSERT INTO MATERIA (nombre, id_curso, id_profesor) VALUES
('Matemática', 1, 1),
('Lengua', 1, 2),
('Historia', 2, 3),
('Geografía', 2, 4),
('Biología', 3, 5),
('Física', 3, 6),
('Química', 4, 7),
('Inglés', 4, 8),
('Educación Física', 5, 9),
('Tecnología', 5, 10),
('Informática', 6, 11),
('Arte', 6, 12),
('Filosofía', 7, 13),
('Economía', 7, 14),
('Construcción Ciudadana', 8, 15);

-- Insertar datos en CALIFICACION (15 calificaciones)
INSERT INTO CALIFICACION (id_estudiante, id_materia, id_profesor, id_curso, nota, fecha_evaluacion) VALUES
-- 60% aprobados (9 registros con nota >= 6)
(1, 1, 1, 1, 8.50, '2023-03-15'),
(2, 2, 2, 1, 7.25, '2023-03-16'),
(3, 3, 3, 2, 6.75, '2023-03-17'),
(4, 4, 4, 2, 9.00, '2023-03-18'),
(5, 5, 5, 3, 7.50, '2023-03-19'),
(6, 6, 6, 3, 8.00, '2023-03-20'),
(7, 7, 7, 4, 6.50, '2023-03-21'),
(8, 8, 8, 4, 7.75, '2023-03-22'),
(9, 9, 9, 5, 8.25, '2023-03-23'),

-- 4% reprobados (1 registro con nota < 4)
(10, 10, 10, 5, 3.50, '2023-03-24'),

-- 36% aleatorio (5 registros con notas entre 4 y 5.99 o > 6)
(11, 11, 11, 6, 5.25, '2023-03-25'),
(12, 12, 12, 6, 4.75, '2023-03-26'),
(13, 13, 13, 7, 6.25, '2023-03-27'),
(14, 14, 14, 7, 5.50, '2023-03-28'),
(15, 15, 15, 8, 7.00, '2023-03-29');
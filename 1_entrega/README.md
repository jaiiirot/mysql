# Base de Datos Secundaria

## Descripción
La base de datos **Secundaria** está diseñada para gestionar la información de una escuela secundaria técnica. Su principal función es registrar y administrar datos relacionados con los cursos, estudiantes, materias, profesores y tutores, permitiendo una mejor organización y acceso a la información.

## Objetivos
- Registrar a cada estudiante junto con las materias que está cursando.
- Asignar o registrar el curso correspondiente a cada estudiante.
- Registrar los profesores responsables de cada materia.
- Mantener un registro de las materias y los estudiantes inscritos en ellas.
- Permitir que los tutores accedan a la información completa de un estudiante, incluyendo:
  - Materias aprobadas y no aprobadas.
  - Notas finales.
  - Profesores que evaluaron y registraron las notas.

Este sistema busca centralizar y optimizar la gestión académica, facilitando el acceso a la información tanto para el personal administrativo como para los tutores.

## Tablas y Relaciones
La base de datos contiene las siguientes tablas:

1. **Tutores**: Contiene la información de los tutores de los estudiantes.
2. **Estudiantes**: Registra los datos personales de los alumnos y su curso asignado.
3. **Cursos**: Define los distintos años y divisiones de la institución.
4. **Profesores**: Contiene información sobre los profesores encargados de dictar las materias.
5. **Materias**: Lista las materias ofrecidas y su asignación a cursos y profesores.
6. **Inscripciones**: Vincula a los estudiantes con los cursos en los que están inscritos.
7. **Calificaciones**: Registra las notas obtenidas por los estudiantes en cada materia.

## Scripts SQL

### Creación de Tablas
El siguiente script crea las tablas necesarias para la base de datos:
```sql
-- DROP DATABASE secundario;
CREATE DATABASE IF NOT EXISTS secundario;

USE secundario;

-- Tabla de Tutores
CREATE TABLE IF NOT EXISTS Tutores (
    id_tutor INT PRIMARY KEY AUTO_INCREMENT,
    dni INT NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
);

-- Tabla de Estudiantes
CREATE TABLE IF NOT EXISTS Estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    dni INT NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    telefono VARCHAR(20)
);

-- Tabla de Cursos
CREATE TABLE IF NOT EXISTS Cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    año INT NOT NULL,
    division INT NOT NULL,
    id_tutor INT,
    FOREIGN KEY (id_tutor) REFERENCES Tutores (id_tutor)
);

-- Tabla de Profesores
CREATE TABLE IF NOT EXISTS Profesores (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    dni INT NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

-- Tabla de Materias
CREATE TABLE IF NOT EXISTS Materias (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_curso INT,
    id_profesor INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso),
    FOREIGN KEY (id_profesor) REFERENCES Profesores (id_profesor)
);

-- Tabla de Inscripciones
CREATE TABLE IF NOT EXISTS Inscripciones (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_curso INT,
    fecha_inscripcion DATE,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes (id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso)
);

-- Tabla de Calificaciones
CREATE TABLE IF NOT EXISTS Calificaciones (
    id_calificacion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_materia INT,
    id_profesor INT,
    nota DECIMAL(5,2),
    fecha_evaluacion DATE,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes (id_estudiante),
    FOREIGN KEY (id_materia) REFERENCES Materias (id_materia),
    FOREIGN KEY (id_profesor) REFERENCES Profesores (id_profesor)
);
```

### Consulta General
Para recuperar la información combinando todas las tablas:
```sql
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
```

## Imagen Representativa
![Diagrama Entidad Relación](https://drive.google.com/u/0/drive-viewer/AKGpihbcbkHuXwOU9w374vtpRH0cnitBUx4z179gvZDhZiUf-om9Y8OP9zRXEvbrz2HF9LyRx1Mg8YyRncNFU21EVNxLEereLZ4oJtg=s1600-rw-v1)

---
**Autor:** Jhon Jairo Pastor Tumiri Cuellar - SQL - Comisión 75190

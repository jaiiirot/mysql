-- DROP DATABASE secundario;
CREATE DATABASE IF NOT EXISTS secundario;

USE secundario;

-- Tabla de Tutores
CREATE TABLE IF NOT EXISTS Tutores (
    id_tutor INT PRIMARY KEY AUTO_INCREMENT,
    dni INT NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

-- Tabla de Estudiantes
CREATE TABLE IF NOT EXISTS Estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    dni INT NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    id_curso INT,
    telefono VARCHAR(20),
    FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso)
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

-- Tabla de Calificaciones
CREATE TABLE IF NOT EXISTS Calificaciones (
    id_calificacion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_materia INT,
    id_profesor INT,
    nota DECIMAL(5, 2),
    fecha_evaluacion DATE,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes (id_estudiante),
    FOREIGN KEY (id_materia) REFERENCES Materias (id_materia),
    FOREIGN KEY (id_profesor) REFERENCES Profesores (id_profesor)
);

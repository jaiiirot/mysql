USE SecundariaTumiri;

-- Tabla TUTOR
CREATE TABLE TUTOR (
    id_tutor INT PRIMARY KEY AUTO_INCREMENT,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- Tabla TURNO
CREATE TABLE TURNO (
    id_turno INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    entrada TIME NOT NULL,
    salida TIME NOT NULL
);

-- Tabla CURSO
CREATE TABLE CURSO (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    año TINYINT NOT NULL CHECK (año BETWEEN 1 AND 6),
    division TINYINT NOT NULL,
    id_turno INT,
    id_tutor INT,
    FOREIGN KEY (id_turno) REFERENCES TURNO(id_turno),
    FOREIGN KEY (id_tutor) REFERENCES TUTOR(id_tutor)
);

-- Tabla ESTUDIANTE
CREATE TABLE ESTUDIANTE (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    id_curso INT,
    telefono VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

-- Tabla PROFESOR
CREATE TABLE PROFESOR (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    dni VARCHAR(15) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- Tabla MATERIA
CREATE TABLE MATERIA (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(80) NOT NULL,
    id_curso INT,
    id_profesor INT,
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso),
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor)
);

-- Tabla CALIFICACION
CREATE TABLE CALIFICACION (
    id_calificacion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT NOT NULL,
    id_materia INT NOT NULL,
    id_profesor INT NOT NULL,
    id_curso INT NOT NULL,
    nota DECIMAL(4,2) CHECK (nota BETWEEN 0 AND 10),
    fecha_evaluacion DATE NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES ESTUDIANTE(id_estudiante),
    FOREIGN KEY (id_materia) REFERENCES MATERIA(id_materia),
    FOREIGN KEY (id_profesor) REFERENCES PROFESOR(id_profesor),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);
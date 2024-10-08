CREATE DATABASE Universidad;

USE Universidad;

-- Tabla Estudiante

CREATE TABLE Estudiantes (
    ID_Estudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE
);

-- Tabla Curso
CREATE TABLE Cursos (
    ID_Curso INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripción TEXT,
    Créditos INT NOT NULL
);

-- Tabla Aula
CREATE TABLE Aulas (
    ID_Aula INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Capacidad INT NOT NULL
);

-- Tabla Docente
CREATE TABLE Docentes (
    ID_Docente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Especialidad VARCHAR(100)
);

-- Tabla Horario
CREATE TABLE Horarios (
    ID_Horario INT AUTO_INCREMENT PRIMARY KEY,
    Dia VARCHAR(15) NOT NULL,
    Hora_Inicio TIME NOT NULL,
    Hora_Fin TIME NOT NULL
);

CREATE TABLE Estudiantes_Cursos (
    ID_Estudiante INT,
    ID_Curso INT,
    Fecha_Inscripción DATE,
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);

CREATE TABLE Cursos_Docentes (
    ID_Curso INT,
    ID_Docente INT,
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso),
    FOREIGN KEY (ID_Docente) REFERENCES Docentes(ID_Docente)
);

CREATE TABLE Cursos_Aulas (
    ID_Curso INT,
    ID_Aula INT,
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso),
    FOREIGN KEY (ID_Aula) REFERENCES Aulas(ID_Aula)
);

CREATE TABLE Cursos_Horarios (
    ID_Curso INT,
    ID_Horario INT,
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso),
    FOREIGN KEY (ID_Horario) REFERENCES Horarios(ID_Horario)
);
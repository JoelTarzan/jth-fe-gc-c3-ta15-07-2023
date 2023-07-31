CREATE DATABASE academia;
USE academia;

CREATE TABLE profesores(
	dni varchar(8),
    nombre varchar(50) unique,
    apellido1 varchar(50),
    apellido2 varchar(50),
    direccion varchar(50),
    titulo varchar(50),
    gana float not null,
    PRIMARY KEY(dni)
);

CREATE TABLE cursos(
	cod_curso int auto_increment,
    nombre_curso varchar(50) unique,
    maximo_alumnos int,
    fecha_inicio date,
    fecha_fin date,
    num_horas int not null,
    dni_profesor varchar(8),
    PRIMARY KEY(cod_curso),
    FOREIGN KEY(dni_profesor) REFERENCES profesores (dni)
    ON DELETE cascade
    ON UPDATE cascade
);

CREATE TABLE alumnos(
	dni varchar(8),
    nombre varchar(50),
    apellido1 varchar(50),
    apellido2 varchar(50),
    direccion varchar(50),
    sexo enum('M', 'H'),
    fecha_nacimiento date,
    curso int not null,
    PRIMARY KEY(dni),
    FOREIGN KEY(curso) REFERENCES cursos (cod_curso)
    ON DELETE cascade
    ON UPDATE cascade
);
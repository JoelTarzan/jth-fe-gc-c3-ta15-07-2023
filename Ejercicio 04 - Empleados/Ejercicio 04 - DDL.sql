CREATE DATABASE empleados;
USE empleados;

CREATE TABLE departamentos(
	codigo int auto_increment,
    nombre nvarchar(100),
    presupuesto int,
    PRIMARY KEY(codigo)
);

CREATE TABLE empleados(
	dni varchar(8),
    nombre nvarchar(100),
    apellidos nvarchar(255),
    departamento int,
    PRIMARY KEY(dni),
    FOREIGN KEY(departamento) REFERENCES departamentos (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);
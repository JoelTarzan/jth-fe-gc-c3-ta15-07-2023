CREATE DATABASE almacenes;
USE almacenes;

CREATE TABLE almacenes(
	codigo int auto_increment,
    lugar nvarchar(100),
    capacidad int,
    PRIMARY KEY(codigo)
);

CREATE TABLE cajas(
	num_referencia char(5),
    contenido nvarchar(100),
    valor int,
    almacen int,
    PRIMARY KEY(num_referencia),
    FOREIGN KEY(almacen) REFERENCES almacenes (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);
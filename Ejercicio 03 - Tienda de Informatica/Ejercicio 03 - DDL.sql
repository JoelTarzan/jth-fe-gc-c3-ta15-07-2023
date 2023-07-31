CREATE DATABASE tienda_informatica;
USE tienda_informatica;

CREATE TABLE fabricantes(
	codigo int auto_increment,
    nombre nvarchar(100),
    PRIMARY KEY(codigo)
);

CREATE TABLE articulos(
	codigo int auto_increment,
    nombre nvarchar(100),
    precio int,
    fabricante int,
    PRIMARY KEY(codigo),
    FOREIGN KEY(fabricante) REFERENCES fabricantes (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);
CREATE DATABASE cine;
USE cine;

CREATE TABLE peliculas(
	codigo int auto_increment,
    nombre nvarchar(100),
    calificacion_edad int,
    PRIMARY KEY(codigo)
);

CREATE TABLE salas(
	codigo int auto_increment,
    nombre nvarchar(100),
    pelicula int,
    PRIMARY KEY(codigo),
    FOREIGN KEY(pelicula) REFERENCES peliculas (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);
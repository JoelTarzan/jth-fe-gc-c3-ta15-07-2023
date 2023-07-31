CREATE DATABASE grandes_almacenes;
USE grandes_almacenes;

CREATE TABLE cajeros(
	codigo int auto_increment,
    nom_apels nvarchar(255),
    PRIMARY KEY(codigo)
);

CREATE TABLE productos(
	codigo int auto_increment,
    nombre nvarchar(100),
    precio int,
    PRIMARY KEY(codigo)
);

CREATE TABLE maquinas_registradoras(
	codigo int auto_increment,
    piso int,
    PRIMARY KEY(codigo)
);

CREATE TABLE ventas(
	cajero int,
    maquina int,
    producto int,
    PRIMARY KEY(cajero, maquina, producto),
    FOREIGN KEY(cajero) REFERENCES cajeros (codigo)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(maquina) REFERENCES maquinas_registradoras (codigo)
    ON DELETE cascade
    ON UPDATE cascade,
    FOREIGN KEY(producto) REFERENCES productos (codigo)
    ON DELETE cascade
    ON UPDATE cascade
);
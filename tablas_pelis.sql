CREATE SCHEMA CinemExtract;
USE CinemExtract;

CREATE TABLE apis(
ID VARCHAR (20) NOT NULL PRIMARY KEY,
genero VARCHAR(20) NOT NULL,
tipo VARCHAR(20) NOT NULL,
titulo VARCHAR(500) NOT NULL,
año INT NOT NULL,
mes INT
);

CREATE TABLE imdb(
titulo VARCHAR (500) NOT NULL PRIMARY KEY,
puntuacion_imdb DECIMAL(2,2),
puntuacion_rotten DECIMAL(2,2),
direccion VARCHAR(500),
guionistas VARCHAR(500),
sinopsis VARCHAR(2000),
duracion VARCHAR(20)
);


CREATE TABLE actores(
nombre_actor VARCHAR(50) NOT NULL PRIMARY KEY,
nacimiento VARCHAR(50),
trayectoria VARCHAR(500),
cargo VARCHAR(50),
oscar VARCHAR(25)
);

CREATE TABLE oscars(
año_ceremonia YEAR NOT NULL PRIMARY KEY,
mejor_pelicula DECIMAL(2,2),
mejor_director  VARCHAR(50),
mejor_actor  VARCHAR(50),
mejor_actriz VARCHAR(50)
);
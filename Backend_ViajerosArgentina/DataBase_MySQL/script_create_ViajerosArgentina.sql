CREATE SCHEMA `viajeros_argentina` ;

USE viajeros_argentina;

CREATE TABLE alojamientos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    tipo_de_alojamiento VARCHAR(100) NOT NULL,
    cantidad_personas_max INT NOT NULL,
    pais VARCHAR(100) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    disponibilidad BOOLEAN NOT NULL,
	precio_por_dia DECIMAL(10, 2) NOT NULL

);

SHOW TABLES;
DESCRIBE alojamientos;

INSERT INTO alojamientos (titulo, tipo_de_alojamiento, cantidad_personas_max, pais, ciudad, direccion, disponibilidad,precio_por_dia)
VALUES ('Hermoso Apartamento en el Centro', 'Apartamento', 4, 'Argentina', 'Buenos Aires', 'Av. Corrientes 1234', TRUE, 150);

INSERT INTO alojamientos (titulo, tipo_de_alojamiento, cantidad_personas_max, pais, ciudad, direccion, disponibilidad, precio_por_dia)
VALUES ('Casa Moderna', 'Casa', 8, 'Argentina', 'Neuquen', 'Calle Falsa 123', TRUE, 200);

INSERT INTO alojamientos (titulo, tipo_de_alojamiento, cantidad_personas_max, pais, ciudad, direccion, disponibilidad, precio_por_dia)
VALUES ('Habitación', 'Hotel',2, 'Argentina', 'Misiones', 'Av. siempre Viva 854', TRUE, 135);

INSERT INTO alojamientos (titulo, tipo_de_alojamiento, cantidad_personas_max, pais, ciudad, direccion, disponibilidad, precio_por_dia)
VALUES ('Cabaña en la Montaña', 'Cabaña', 6, 'Argentina', 'Mendoza', 'Camino a Farellones 5678', TRUE, 150.00);


SELECT * from alojamientos;

CREATE TABLE atracciones_turisticas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(100) NOT NULL,
    excursion VARCHAR(255) NOT NULL,
    incluye_traslado BOOLEAN NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

INSERT INTO atracciones_turisticas (destino, excursion, incluye_traslado, precio)
VALUES ('Puerto Madryn', 'Avistaje de Ballenas',TRUE,  200.00);

INSERT INTO atracciones_turisticas (destino, excursion, incluye_traslado, precio)
VALUES ('Iguazú', 'Tour de las Cataratas', TRUE, 150.00);

INSERT INTO atracciones_turisticas (destino, excursion, incluye_traslado, precio)       
VALUES('Mendoza', 'Tour de alta Montaña', TRUE, 130.00);

SELECT * FROM atracciones_turisticas;

CREATE TABLE alquiler_de_autos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    cantidad_personas_max INT NOT NULL,
    cantidad_valijas_max INT NOT NULL,
    autonomia DECIMAL(10, 2) NOT NULL
);

INSERT INTO alquiler_de_autos (modelo, cantidad_personas_max, cantidad_valijas_max, autonomia)
VALUES ('Mini Cooper',2,2,305),
       ('Ford Mustang',2,2, 541),
       ('Chevrolet Camaro',2,2,562),
       ('wolkswagen Gol',5,1,887);
       
SELECT * FROM alquiler_de_autos;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL
);


INSERT INTO usuarios(usuario,contrasena)
VALUES ('Rosa Juarez', 'Contraseña1'),
       ('Raul Lopez', 'Contraseña2'),
       ('Karina Perez', 'Contraseña3'),
       ('Emanuel Fernandez','Contraseña4');
       
SELECT * FROM usuarios;





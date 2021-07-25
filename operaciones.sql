DROP  DATABASE post;

CREATE DATABASE post;
\c post;

CREATE TABLE post(
    id INT,
    nombre_usuario VARCHAR(25),
    fecha_creacion DATE,
    contenido VARCHAR(25),
    descripcion VARCHAR(25),
    PRIMARY KEY (id)
);

CREATE TABLE comentarios(
    id_post INT,
    fecha DATE,
    hora_creacion TIME,
    contenido VARCHAR(100),
    FOREIGN KEY (id_post) REFERENCES post(id)
);

--post pamela
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES (1, 'Pamela', '24/07/2021', 'hola1', 'primer post pamela');

INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES (2, 'Pamela', '24/07/2021', 'hola2', 'segundo post pamela');

--post carlos
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES (3, 'Carlos', '24/07/2021', 'hola1', 'primer post carlos');

--agregar columna titulo
ALTER TABLE post ADD titulo VARCHAR(25);

--actualizar los post
UPDATE post SET titulo = 'titulo_post'  WHERE id = 1;

UPDATE post SET titulo = 'titulo_post'  WHERE id = 2;

UPDATE post SET titulo = 'titulo_post'  WHERE id = 3;

--post pedro
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES (4, 'Pedro', '24/07/2021', 'hola1', 'primer post pedro', 'titulo_post');

INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES (5, 'Pedro', '24/07/2021', 'hola1', 'segundo post pedro', 'titulo_post');

--borrar post carlos
DELETE FROM post WHERE nombre_usuario='Carlos';

INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES (6, 'Carlos', '24/07/2021', 'hola1', 'nuevo post carlos', 'titulo_post');

-- post margarita
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES (7, 'Margarita', '24/07/2021', 'hola1', 'primer post margarita', 'titulo_post');

-- comentarios pamela
INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (1, '24/07/2021', '15:30:00', 'comentarios_pamela1');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (1, '24/07/2021', '15:30:00', 'comentarios_pamela2');

--comentarios carlos
INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (6, '24/07/2021', '15:30:00', 'comentarios_carlos1');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (6, '24/07/2021', '15:30:00', 'comentarios_carlos2');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (6, '24/07/2021', '15:30:00', 'comentarios_carlos3');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (6, '24/07/2021', '15:30:00', 'comentarios_carlos4');

-- comentarios margarita
INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (7, '24/07/2021', '13:30:00', 'comentarios_margarita1');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (7, '24/07/2021', '13:30:00', 'comentarios_margarita2');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (7, '24/07/2021', '14:30:00', 'comentarios_margarita3');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (7, '24/07/2021', '14:30:00', 'comentarios_margarita4');

INSERT INTO comentarios
(id_post, fecha, hora_creacion, contenido)
VALUES (7, '24/07/2021', '20:45:00', 'comentarios_margarita5');
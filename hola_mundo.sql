CREATE database holamundo;
SHOW databases;
USE holamundo;
CREATE table animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);
SHOW tables;

ALTER TABLE animales MODIFY column id int auto_increment;
-- INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');


SHOW create table animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');

SELECT * FROM animales;
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'felipe';

UPDATE animales SET estado = 'feliz' where id = 4;

SELECT * FROM animales;
DELETE FROM animales where estado = 'feliz';
DELETE FROM animales where id = 3;

UPDATE animales set estado = 'triste' where id = 4;
DELETE FROM animales where id = 4;
UPDATE animales set estado = 'triste' where id = 2;
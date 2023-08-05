# Las columnas que tienen el 'id' se llaman 'primary key'.
# Las columnas que tienen el 'id' en otras tablas se llaman 'foreign key'.

# CREAR UNA BASE DE DATOS
	CREATE DATABASE holamundo;

# MOSTRAR LAS BASES DE DATOS CREADAS
	SHOW DATABASES;

# USAR LA BASE DE DATOS
	USE holamundo;

# CREAR UNA TABLA
	CREATE table animales (
		id int,
	    tipo varchar(255),
	    estado varchar(255),
	    PRIMARY KEY (id)
	);

# MOSTRAR TODAS LAS TABLAS
	SHOW tables;

# INSERTAR DATOS EN LA TABLA
	INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');

# MODIFICAR EL VALOR INCREMENTAL DE LA COLUMNA ID
	ALTER TABLE animales MODIFY COLUMN id int auto_increment;

# INSERTAR VALORES EN LA TABLA
	INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
	INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
	INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');

# VISUALIZAR TODAS LAS COLUMNAS DE LA TABLA ESPECIFICADA
	SELECT * FROM animales;

# ACTUALIZAR UN VALOR TOMANDO EN CUENTA EL ID
	UPDATE animales SET estado = 'feliz' WHERE id = 4;

# ELIMINAR UN REGISTRO TOMANDO EN CUENTA EL ESTADO
	DELETE from animales where estado = 'feliz';

# ELIMINAR UN REGISTRO TOMANDO EN CUENTA EL ID
	DELETE from animales where id = 3;

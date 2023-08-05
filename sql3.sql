create database users;
use users;
CREATE TABLE usuario(
	id int not null auto_increment,
    nombre varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO usuario (nombre, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO usuario (nombre, edad, email) values ('Layla', 15, 'layla@gmail.com');
INSERT INTO usuario (nombre, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
INSERT INTO usuario (nombre, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

select * from usuario;
select * from usuario limit 1;
select * from usuario where edad > 15;
select * from usuario where edad >= 15;
select * from usuario where edad > 15 and email = 'nico@gmail.com';
select * from usuario where edad > 20 or email = 'layla@gmail.com';
select * from usuario where email != 'layla@gmail.com';
select * from usuario where edad between 15 and 30;
select * from usuario where email like '%gmail%';
select * from usuario where email like '%gmail';
select * from usuario where email like 'oscar%';

select * from usuario order by edad asc;
select * from usuario order by edad desc;

select max(edad) as mayor_edad from usuario;
select min(edad) as menor_edad from usuario;

select id, nombre from usuario;
select id, nombre as columna_nombre from usuario;

rename table usuario to user;
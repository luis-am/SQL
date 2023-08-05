CREATE DATABASE myDB;
USE myDB;

-- elimina la base de datos
DROP DATABASE myDB;

-- base de datos en modo lectura
ALTER DATABASE myDB READ ONLY = 1;

-- desactivando base de datos modo lectura
ALTER DATABASE myDB READ ONLY = 0;

CREATE TABLE employees (
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

SELECT * FROM employees;

-- renombrar el nombre de una tabla
RENAME table workers TO employees;

-- eliminar una tabla
DROP TABLE employees;

-- agregar una nueva columna a la tabla
ALTER TABLE employees ADD phone_number VARCHAR(15);

-- cambiar el nombre de la columna
ALTER TABLE employees
RENAME COLUMN phone_number TO email;

-- cambiar el tipo de dato en la columna especificada
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);

-- cambiar la posicion de la columna, en este caso la columna email va despues de la columna last_name
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;

-- poner al principio la columna especificada
ALTER TABLE employees
MODIFY email VARCHAR(100)
FIRST;

SELECT * FROM employees;

-- eliminar una columna de la tabla
ALTER TABLE employees
DROP COLUMN email;

-- insertar datos en la tabla
INSERT INTO employees
VALUES 	(1, "Eugene", "Krabs", 25.50, "2023-01-02"),
		(2, "Squidward", "Tentacles", 15.00, "2023-01-03"),
        (3, "Spongebob", "Squarepants", 12.50, "2023-01-04"),
        (4, "Patrick", "Star", 12.50, "2023-01-05"),
        (5, "Sandy", "Cheeks", 17.50, "2023-01-06");

SELECT * FROM employees;

-- insertando datos especificando las columnas
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, "Sheldon", "Plankton");


SELECT last_name, first_name
FROM employees;

SELECT *
FROM employees
WHERE employee_id = 1;

SELECT *
FROM employees
WHERE first_name = "Spongebob";

SELECT *
FROM employees
WHERE hourly_pay >= 15;

SELECT *
FROM employees
WHERE hire_date <= "2023-01-03";

SELECT *
FROM employees
WHERE employee_id != 1;

SELECT *
FROM employees
WHERE hire_date IS NULL;

SELECT *
FROM employees
WHERE hire_date IS NOT NULL;

-- actualizar datos de los registros, pueden ser varios
UPDATE employees
SET hourly_pay = 10.25,
	hire_date = "2023-01-07"
WHERE employee_id = 6;

UPDATE employees
SET hire_date = NULL
WHERE employee_id = 6;

SELECT * FROM employees;

-- eliminar un registro
DELETE FROM employees
WHERE employee_id = 1;

INSERT INTO employees
VALUES (1, "Eugene", "Krabs", 20.00, "2023-01-01");

UPDATE employees
SET hire_date = "2023-01-07"
WHERE employee_id = 6;



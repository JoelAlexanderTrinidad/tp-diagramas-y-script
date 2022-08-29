-- 1. Insertar un nuevo género en genres
INSERT INTO `movies_db`.`genres` (`name`, `ranking`, `active`) VALUES ('Investigacion', '13', '1');
-- 2. Actualizar elnuevo registro
UPDATE `movies_db`.`genres` SET `name` = 'Investigacion Cientifica' WHERE (`id` = '13');
-- 3. Eliminar el registro
DELETE FROM `movies_db`.`genres` WHERE (`id` = '13');
-- 4. Mostrar todos los registros de la tabla movies
SELECT * FROM movies_db.movies;
-- 5. Mostrar nombre, apellido, y rating de todos los actores
SELECT CONCAT(first_name, " " ,last_name) AS "Actores", rating FROM actors;
-- 6. Título español
SELECT title AS titulo FROM series;

-- 1. Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7.5
SELECT CONCAT(first_name, " " ,last_name) AS "Actores" FROM actors WHERE rating > 7.5;
-- 2. Mostrar el título de las películas, el rating y los premios de las películas con un rating mayor a 7.5 y con más de dos premios.
SELECT title, rating FROM movies WHERE awards > 7.5 and awards > 2;
-- 3. Mostrar el título de las películas y el rating ordenadas por rating en forma ascendente.
SELECT title, rating FROM movies ORDER BY rating;

-- 1. Mostrar los títulos de las primeras tres películas en la base de datos.
SELECT title FROM movies LIMIT 3;
-- 2. Mostrar el top 5 de las películas con mayor rating.
SELECT title FROM movies ORDER BY rating DESC LIMIT 5;
-- 3. Mostrar las top 5 a 10 de las películas con mayor rating.
SELECT title FROM movies ORDER BY rating DESC LIMIT 5 OFFSET 5;
-- 4. Listar los primeros 10 actores (sería la página 1).
SELECT CONCAT(first_name, " " ,last_name) AS "Actores" FROM actors LIMIT 10;
-- a. Luego, usar offset para traer la página 3.
SELECT CONCAT(first_name, " " ,last_name) AS "Actores" FROM actors LIMIT 10 OFFSET 30;

-- 1. Mostrar el título y rating de todas las películas cuyo título sea Harry Potter.
SELECT title, rating FROM movies WHERE title LIKE "Harry Potter%";
-- 2. Mostrar a todos los actores cuyos nombres empiecen con Sam.
SELECT CONCAT(first_name, " " ,last_name) AS "Actores" FROM actors WHERE first_name LIKE "%Sam";
-- 3. Mostrar el título de las películas que salieron entre el 2004 y 2008.
SELECT title, release_date FROM movies WHERE release_date BETWEEN "2004-00-00" AND "2008-00-00";








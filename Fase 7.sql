USE CinemExtract;

-- ¿Qué géneros han recibido más premios Óscar?
SELECT GENERO
FROM apis
WHERE titulo IN (
	SELECT titulo
	FROM titulo_pelis
	where titulo in (
		SELECT titulo
		FROM oscars));

-- ¿Qué género es el mejor valorado en IMDB?
SELECT AVG(imdb.puntuacion_imdb)
FROM imdb
NATURAL JOIN apis
GROUP BY /*apis.*/genero;

-- ¿En que año se estrenaron más películas?
SELECT COUNT(DISTINCT titulo)
FROM apis
WHERE `tipo`= 'Movie'
GROUP BY año;


-- ¿En que año se estrenaron mas cortos?
SELECT COUNT(DISTINCT titulo)
FROM apis
WHERE tipo = 'Short'
GROUP BY año;

-- ¿Cuál es el mejor corto valorada en IMDB?
SELECT apis.titulo , imdb.puntuacion_imdb, apis.tipo 
FROM apis
NATURAL JOIN imdb -- o left join
WHERE apis.tipo = 'Short'
ORDER BY puntuacion_imdb DESC
LIMIT 1;

-- ¿Cuál es la película mejor valorada en IMDB?
SELECT imdb.titulo, imdb.puntuacion_imdb, apis.tipo 
FROM imdb
LEFT JOIN apis -- o left join
ON apis.titulo = imdb.titulo
WHERE apis.tipo = 'Movie'
ORDER BY puntuacion_imdb DESC
LIMIT 1;

-- ¿Qué actor/actriz ha recibido más premios?
SELECT nombre_actor, oscar 
FROM actores
WHERE oscar LIKE 'Ganó%'
ORDER BY oscar DESC
LIMIT 1;

-- ¿Hay algun actor/actriz que haya recibido más de un premio Óscar?
SELECT nombre_actor, oscar 
FROM actores
WHERE oscar LIKE 'Ganó%' AND oscar  NOT LIKE '%1 %'
ORDER BY oscar DESC;


-- ¡BONUS!
-- ¿Qué género es el que tiene mejor valoraciones en IMDB?
SELECT genero, MAX(puntuacion_imdb)
FROM apis
NATURAL JOIN imdb
GROUP BY genero
HAVING MAX(puntuacion_imdb)=10
ORDER BY MAX(puntuacion_imdb) DESC;

-- HALLOWEEN horror mejor valorada por año
WITH puntuacion as(SELECT MAX(imdb.puntuacion_imdb), a.año, a.genero, a.titulo
FROM apis as a
inner join imdb
on a.titulo=imdb.titulo
GROUP BY a.año, a.genero
having genero='Horror' and MAX(imdb.puntuacion_imdb)
)

SELECT a.titulo, MAX(p.puntuacion_imdb), p.año, p.genero
FROM apis as a
LEFT join puntuacion AS p
on a.titulo=p.titulo ;

select max(puntuacion_imdb), titulo
from imdb
where titulo =(			
            select titulo
			from apis 
			where año = (
						 SELECT distinct `año`
						 FROM `apis`
						 WHERE `genero`='Horror'))
                         And max(puntuacion_imdb);
                         
select max(puntuacion_imdb), titulo
from imdb
where titulo =( SELECT  titulo
				FROM `apis`
				wHERE `genero`='Horror'
                GROUP BY AÑO)
				HAVING max(puntuacion_imdb);
SELECT IMDB.TITULO, MAX(IMDB.PUNTUACION_IMDB)
FROM IMDB
INNER JOIN APIS
ON IMDB.TITULO=APIS.TITULO
WHERE APIS.`genero`='Horror'
GROUP BY APIS.AÑO AND IMDB.PUNTUACION_IMDB
                
SELECT film.title AS 'Titulo', film.`length` AS 'Duración', category.`name` AS 'Categoría' FROM film
WHERE film.film_id IN (
						SELECT film_id FROM film_category
						WHERE category_id = (
											SELECT category_id FROM category WHERE category.`name`= 'Comedy')) AND film.`length`>=180;


-- XMAS en descripcion y titulo
SELECT title, `description` FROM film_text WHERE `description` LIKE '%dog%' OR `description` LIKE '%cat%';
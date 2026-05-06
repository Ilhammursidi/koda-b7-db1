SELECT m.director_id AS "id", CONCAT(d.first_name, ' ', d.last_name) AS "director", count(DISTINCT m.genre_id) AS "genre"
FROM directors d
JOIN movies m ON m.director_id = d.id
JOIN genres g ON g.id = m.genre_id
GROUP BY m.director_id, d.first_name, d.last_name
ORDER BY m.director_id ASC;


SELECT a.id, CONCAT(a.first_name, ' ',a.last_name) AS actor_name, COUNT(ma.role) AS total_roles
FROM actors a
JOIN movies_actors ma ON a.id = ma.actor_id
GROUP BY a.id, a.first_name, a.last_name
HAVING COUNT(ma.role) >= 5;

SELECT d.id, CONCAT(d.first_name, ' ',d.last_name) AS director_name, COUNT(m.title) AS total_movies
FROM directors d
JOIN movies m ON m.director_id = d.id
GROUP BY d.id, d.first_name, d.last_name
ORDER BY COUNT(m.title) DESC
LIMIT 1;

SELECT EXTRACT(YEAR FROM release_date) AS release_year, COUNT(*) AS total_movies
FROM movies
GROUP BY EXTRACT(YEAR FROM release_date)
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT m.id, m.title, STRING_AGG(CONCAT(a.first_name, ' ', a.last_name), ', ') AS actors
FROM movies m
JOIN movies_actors ma ON m.id = ma.movie_id
JOIN actors a ON ma.actor_id = a.id
GROUP BY m.id, m.title;
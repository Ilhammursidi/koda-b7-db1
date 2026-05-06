SELECT m.id,m.title, m.director_id, m.genre_id, d.id, d.first_name, d.last_name,g.id, g.name
FROM movies m
JOIN directors d ON d.id = m.director_id
JOIN genres g ON g.id = m.genre_id
LIMIT 50

SELECT ma.movie_id, ma.actor_id, ma.role, m.id, m.title, m.director_id, a.id, a.first_name, a.last_name
FROM movies_actors ma
JOIN movies m ON m.id = ma.movie_id
JOIN actors a ON a.id = ma.actor_id
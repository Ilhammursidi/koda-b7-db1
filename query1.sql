SELECT release_date, title
FROM movies
WHERE release_date BETWEEN '2020-01-01 00:00:00' AND '2020-12-31 23:59:59'
ORDER BY title ASC

SELECT first_name
FROM actors
WHERE first_name LIKE '%s'

SELECT release_date, rating, title
FROM movies
-- WHERE rating >= 4.0 AND rating <= 8.0 AND release_date >= '2004-01-01' AND release_date <= '2010-12-31'
WHERE rating BETWEEN 4.0 AND 8.0 AND release_date BETWEEN '2004-01-01 00:00:00' AND '2010-12-31 23:59:59'
ORDER BY release_date DESC, rating DESC, title ASC
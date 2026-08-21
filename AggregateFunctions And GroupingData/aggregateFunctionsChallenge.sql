-- Count number of actors born after the 1st of Jan 1970.
SELECT COUNT(*) FROM actors
WHERE dob > '1970-01-01';

-- What was the highest and lowest domestic takings for a movie?
SELECT MAX(domestic_takings) FROM movie_revenues;
SELECT MIN(domestic_takings) FROM movie_revenues;
SELECT MAX(international_takings) FROM movie_revenues;
SELECT MIN(international_takings) FROM movie_revenues;

-- What is the sum total movie length for movies rated 15?
SELECT SUM(movie_length) FROM movies
WHERE age_certificate = '15';

-- How many Japanese direcors are in directors Table?
SELECT COUNT(director_id) FROM directors
-- WHERE nationality = 'Japanese';
WHERE nationality IN('Japanese');

-- What is the average movie length for Chinese movies?
SELECT AVG(movie_length) FROM movies
WHERE movie_lang IN ('Chinese');
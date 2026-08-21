-- How many directors are per Nationality.
SELECT nationality, COUNT(nationality) FROM directors
GROUP BY nationality;

-- What is the sum total movie length for each age Certificate and movie language combination.
SELECT movie_lang, age_certificate,  SUM(movie_length) FROM movies
GROUP BY age_certificate, movie_lang
ORDER BY movie_lang;

-- Return the movie languages which have  a sum total movie length of over 500 minutes apart from English.
SELECT movie_lang, SUM(movie_length) FROM movies
WHERE movie_lang NOT IN ('English')
GROUP BY movie_lang
HAVING SUM(movie_length) > 500;
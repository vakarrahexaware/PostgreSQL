--  Select everything from Movie
SELECT * FROM movies;

-- Select movie_name and release_date for every movie
SELECT movie_name, release_date FROM movies;

ALTER TABLE directors
RENAME COLUMN fname TO first_name;

ALTER TABLE directors
RENAME COLUMN lname TO last_name;

-- Select First and Last names for American Directors
SELECT first_name, last_name FROM directors
WHERE nationality = 'American';

-- Select all male actors born after the 1st of January 1970
SELECT * FROM actors
WHERE gender = 'M' AND dob > '1970-01-01';

-- Select the names of all movies which over 90 mins long and movie language is English
SELECT movie_name FROM movies
WHERE movie_length > 90 AND movie_lang = 'English';
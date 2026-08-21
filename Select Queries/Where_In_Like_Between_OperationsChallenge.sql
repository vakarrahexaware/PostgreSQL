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
WHERE movie_length > 90 
AND movie_lang = 'English';

-- Select movie name and movie languages of all movies with a movie language of english, spanish or Korean
SELECT movie_name, movie_lang FROM movies
WHERE movie_lang IN ('English', 'Spanish', 'Korean');

-- Select fName and lName of the actors whose last Name begins with m and were born between 01/01/1940 and 31/12/1969
SELECT fname, lname FROM actors
WHERE lname LIKE 'M%' 
AND dob BETWEEN '1940-01-01' AND '1969-12-31';

-- Select the first and last names of the directors with 
-- nationality of British, French or German born between 01/01/1950 and 31/12/1980
SELECT first_name, last_name FROM directors
WHERE nationality IN ('British', 'French', 'German') 
AND dob BETWEEN '1950-01-01' AND '1980-12-31'; 
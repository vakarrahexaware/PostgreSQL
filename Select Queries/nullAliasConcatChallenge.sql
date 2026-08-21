SELECT * FROM movies;

-- Retrun  top 3 movies with the highest International Takings
SELECT * FROM movie_revenues
WHERE international_takings IS NOT NULL
ORDER BY international_takings DESC
LIMIT 3;

-- Concat first and last names of directors, seperated by space and call this new column full_name
SELECT CONCAT_WS(' ', first_name, last_name) AS full_name FROM directors;

-- Return the actors with missing first_name or missing date_of_births
SELECT * FROM actors
WHERE fname IS NULL 
OR dob IS NULL;
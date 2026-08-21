SELECT 8 + 4 AS sum;
SELECT 8 - 4 AS differece;
SELECT 8 * 4 AS product;
SELECT 11 / 5 AS quotient;
SELECT 11 % 5 AS remainder;

SELECT * FROM movie_revenues;

-- Get Gross takings and exclude null value rows
SELECT movie_id, (domestic_takings + international_takings) AS gross_takings FROM movie_revenues
WHERE movie_revenues IS NOT NULL;
-- Select American directors from oldest to youngest
SELECT * FROM directors
ORDER BY dob;

-- Retrun distinct nationalities from the directors table
SELECT DISTINCT nationality FROM directors;

-- Return first_name, last_names and dob of the 10 youngest female actors
SELECT first_name, last_name, dob FROM directors
ORDER BY dob DESC LIMIT 10;

-- For Fetch, Offset should come before
SELECT first_name, last_name, dob FROM directors
ORDER BY dob DESC
OFFSET 20
FETCH FIRST 10 ROW ONLY;
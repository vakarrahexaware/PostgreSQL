-- Database: pet_owners

-- DROP DATABASE IF EXISTS pet_owners;

CREATE DATABASE pet_owners
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	

-- 	Owners should be with must values of lName
	CREATE TABLE owners(
		id SERIAL,
		first_name VARCHAR(30),
		last_name VARCHAR(50) NOT NULL,
		city VARCHAR(20),
		state VARCHAR(20),
		email VARCHAR(50),
		mob VARCHAR(10),
		age INT NOT NULL
	);
	
	SELECT * FROM owners;
	
-- 	Owners should have mobile, 
ALTER TABLE owners
ALTER COLUMN mob SET NOT NULL;

-- fName to Not Null, lName could be empty
ALTER TABLE owners
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name DROP NOT NULL;

-- lName should not be more than 30 characters
ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(30);

--  id as pkey
-- You want to explicitly name and define new constraints (UNIQUE, CHECK, FOREIGN KEY, PRIMARY KEY).
ALTER TABLE owners
ADD CONSTRAINT owners_pkey PRIMARY KEY(id);

--  Drop Age, 
ALTER TABLE owners
DROP COLUMN age;

--  Add preffered Timings column (next to lastName)
-- In PostgreSQL, you cannot directly change the position of a column once it has been added to a table. 
-- When you add a new column using the ADD COLUMN command, it is always appended to the end of the table's schema.
ALTER TABLE owners
ADD COLUMN preffered_timings VARCHAR(20);

-- Change Mob to Mobile, State to 2
ALTER TABLE owners
RENAME mob TO mobile;

-- EMAIL should be unique
ALTER TABLE owners
ADD CONSTRAINT unique_email UNIQUE(email);


	


	
	
	
	
	
	
	
	
	
	
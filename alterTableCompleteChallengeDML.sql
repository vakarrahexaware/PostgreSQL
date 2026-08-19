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

-- ADD age column
ALTER TABLE owners
ADD COLUMN age INT;

-- Create Age should be always +ve num
ALTER TABLE owners
ADD CONSTRAINT check_age CHECK(age > 0);

ALTER TABLE owners
ALTER COLUMN mobile TYPE VARCHAR(13);


-- Insert Data into owners Table
INSERT INTO owners (
		first_name,
		last_name,
		city ,
		state,
		email,
		mobile,
		age)
values ('Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com', '123-456-7890', 30),
('Emma', 'Johnson', 'Seattle', 'WA', 'emjohnson@gmail.com', '234-567-8901', 25),
('John', 'Oliver', 'New York', 'NY', 'johnoliver@gmail.com', '345-678-9012', 40),
('Olivia', 'Brown', 'San Francisco', 'CA', 'oliviabrown@gmail.com', '456-789-0123', 28),
('Simon', 'Davis', 'Chicago', 'IL', 'simondavis@gmail.com', '567-890-1234', 35);


SELECT * FROM owners;


-- Create Pets Table with Foreign Key of OwnerID
	
CREATE TABLE pets(
	id SERIAL,
	species VARCHAR(30),
	full_name VARCHAR(30) NOT NULL,
	age INT CHECK(age > 0),
	owner_id INT REFERENCES owners(id)
);

INSERT INTO pets (species, full_name, age, owner_id) VALUES
('Dog', 'Rex', 6, 1),
('Rabbit', 'Fluffy', 2, 5),
('Cat', 'Tom', 8, 2),
('Mouse', 'Jerry', 2, 2),
('Dog', 'Biggles', 4, 1),
('Tortoise', 'Squirtle', 42, 3);

SELECT * FROM pets;

-- Update Fluffy age to 3
UPDATE pets
SET age = 3
WHERE pets.id = 2;

-- Delete Olivia Brown from the table
DELETE FROM owners
WHERE id = 4;

	
	
	
	
	
	
	
	
	
	
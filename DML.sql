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
	
	
	-- Owners Table
	CREATE TABLE owners(
		id serial Primary Key,
		first_name varchar(30),
		last_name varchar(30) not null,
		city varchar(30),
		state char(2)
	);
	
	SELECT * FROM owners;
	
	-- Pets Table
	CREATE TABLE pets(
		pet_id serial,
		species varchar(30),
		full_name varchar(30) not null,
		age int not null,
		owner_id int references owners(id)
	);
	
	SELECT * FROM pets;
	
	-- ** Change petId to primary Key
	ALTER TABLE pets
	ADD CONSTRAINT pet_pkey PRIMARY KEY(pet_id);
	
	SELECT * FROM pets;
	
	-- Add email column to Owners
	ALTER TABLE owners
	ADD COLUMN email varchar(50) not null unique,
	ALTER COLUMN last_name TYPE varchar(50);
	
	SELECT * FROM owners;
	
	-- Insert Data in Owners table;
	INSERT INTO owners (first_name, last_name, state, email)
	VALUES ('Venkat', 'Karra', 'TG', 'avioffice1992@gmail.com');
	
	INSERT INTO owners (first_name, last_name, state, email)
	VALUES ('', 'Nithin', 'AP', 'nithin_jj@gmail.com'),
	('Bharath', 'jumkala', 'AP', 'bharath_jj@gmail.com'),
	('Ramana', 'TVK', 'TG', 'ramana_bujji@gmail.com');
	
	INSERT INTO owners (first_name, last_name, state, email)
	VALUES (null, 'Karra', 'TG', 'aviofficeavi@gmail.com');
	
	SELECT * FROM owners;
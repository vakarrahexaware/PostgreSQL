-- Database: movies_db

-- DROP DATABASE IF EXISTS movies_db;

CREATE DATABASE movies_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
	-- Directors Table 
	CREATE TABLE directors(
		director_id SERIAL Primary Key,
		fName varchar(30),
		lName varchar(30) not null,
		dob date,
		nationality varchar(20)
	);
	
	SELECT * From directors;
	
	-- DROP TABLE directors;
	
	-- Actors Table without Primary Key
	CREATE TABLE actors(
		actor_id serial,
		fName varchar(30),
		lName varchar(30) not null,
		gender char(1),
		dob date
	);
	
	ALTER TABLE actors
	ADD CONSTRAINT actor_pkey PRIMARY KEY(actor_id)
	
	SELECT * from actors;
	
	
	-- Create Movies Table with FK of Directors
	CREATE TABLE movies(
		movie_id serial Primary Key,
		movie_name varchar(50),
		movie_length int,
		movie_lang varchar(20),
		release_date date,
		age_certificate varchar(5),
		director_id int references directors(director_id)
	);
	
	SELECT * FROM movies;
	
	-- Create Movie Revenues Table with movie_id as FK
	CREATE TABLE movie_revenues(
		revenue_id serial Primary Key,
		movie_id int references movies(movie_id),
		domestic_takings numeric(6,2) not null,
		international_takings numeric(6,2)
	);
	
	SELECT * FROM movie_revenues;
	
	-- Create a JUNCTION TABLE for movie and actors
	CREATE TABLE movie_actors(
		mov_id INT references movies(movie_id),
		act_id INT references actors(actor_id),
		Primary Key(mov_id, act_id)
	);
	
	SELECT * FROM movie_actors;
	
	SELECT * FROM movie_actors;
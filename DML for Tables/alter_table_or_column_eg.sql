-- Database: alter_tables_db

-- DROP DATABASE IF EXISTS alter_tables_db;

CREATE DATABASE alter_tables_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
	CREATE TABLE table1(
		id serial 
	);
	
	SELECT * FROM table1;
	
	-- Add col1 independently for table1
	ALTER TABLE table1
	ADD COLUMN col1 varchar(20);
	
	-- Add col2 and col3 independently for table1
	ALTER TABLE table1
	ADD COLUMN col2 int,
	ADD COLUMN col3 serial PRIMARY KEY;

	SELECT * FROM table1;
	
	-- Change Col2 type to char
	ALTER TABLE table1
	ALTER COLUMN col2 TYPE char(5);
	
	SELECT * FROM table1;
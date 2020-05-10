-- Create Table
-- Check while creating table -- Constraints the column entries
CREATE TABLE employees(
 	emp_id SERIAL PRIMARY KEY, 
 	first_name VARCHAR(50) NOT NULL,
 	last_name VARCHAR(50) NOT NULL,
 	birthdate DATE CHECK (birthdate > '1900-01-01'),
 	hire_date DATE CHECK (hire_date > birthdate),
 	salary INTEGER CHECK (salary > 0)
);

INSERT INTO employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary)
VALUES(
	'smn',
	'nalgire',
	'1899-11-03',
	'2010-01-01',
	100
);
-- Note that it will throw an error bcoz it violates the check constraint




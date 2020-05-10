-- ..................CREATE TABLE....................

-- General Syntax
CREATE TABLE table_name(
	col_name TYPE col_constraint,
	col_name TYPE col_constraint,
	table_constraint table_constraint,
)INHERITS existing_table_name

.....................................................

-- SERIAL 
-- PRIMARY KEY
CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL, 
	last_login TIMESTAMP
);

-- Create other tables and link with the account table

-- Job table
-- NOT NULL
-- UNIQUE
CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);

-- Table refenrecing account table and job table
-- Intermediary table connecting someone's 
-- account to their job and when they were hired
CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);


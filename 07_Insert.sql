-- Insert rows in a table
-- Serial column doesnt need to be provided a value
-- All those column which dont have a constraint of NOT NULL doesnt need to be provided a value

-- Account table
INSERT INTO account (username, password, email, created_on)
VALUES ('shiva', 'password', 'smn@gmail.com', CURRENT_TIMESTAMP);

-- Job table
INSERT INTO job(job_name)
VALUES ('Data Scientist');

-- Account-job intermediate table
INSERT INTO account_job(user_id, job_id, hire_date)
VALUES (1,1, CURRENT_TIMESTAMP);




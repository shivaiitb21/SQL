-- Delete ROWS from a table

INSERT INTO job(job_name)
VALUES ('Cowboy');

-- Delete and return deleted
DELETE FROM job
	WHERE job_name = 'Cowboy'
	RETURNING job_id, job_name;
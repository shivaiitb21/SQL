-- Update -->> changing values in a column

-- Update current timestamp
UPDATE account
	SET last_login = CURRENT_TIMESTAMP;
	
-- Update using column in same table
UPDATE account
	SET last_login = created_on;
	
-- Update using two tables
UPDATE account_job
	SET hire_date = account.created_on
	FROM account
	WHERE account_job.user_id = account.user_id;
	
-- Use RETURNING to get the results
UPDATE account
	SET last_login = CURRENT_TIMESTAMP
	RETURNING email, created_on, last_login;
	

	

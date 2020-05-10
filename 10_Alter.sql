CREATE TABLE information(
 	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
 	person VARCHAR(50) NOT NULL UNIQUE
);

SELECT * FROM information;

-- Rename tabel
ALTER TABLE information
	RENAME TO new_info;
	
-- Rename column
ALTER TABLE new_info
	RENAME COLUMN person
	TO people;

SELECT * FROM new_info;

-- Alter constraints on columns
ALTER TABLE new_info
	ALTER COLUMN people DROP NOT NULL;

INSERT INTO new_info(title)
	VALUES ('some title');
	


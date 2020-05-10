-- Drop Table
ALTER TABLE new_info
	DROP COLUMN people;
	
-- Drop column If exists
ALTER TABLE new_info 
	DROP COLUMN IF EXISTS people;
	
-- Drop two columns
ALTER TABLE new_info
	DROP COLUMN title,
	DROP COLUMN info_id;
	
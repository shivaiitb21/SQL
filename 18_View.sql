
SELECT first_name, last_name, address 
	FROM customer
	INNER JOIN address
	ON customer.address_id = address.address_id;
	
-- Suppose you frequently need to run this query
-- Create a VIEW like FUNCTION in python
CREATE VIEW customer_info AS
SELECT first_name, last_name, address 
	FROM customer
	INNER JOIN address
	ON customer.address_id = address.address_id;
	
-- Call the view
SELECT * FROM customer_info;

-- You can also EDIT or MODIFY the VIEW
CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district 
	FROM customer
	INNER JOIN address
	ON customer.address_id = address.address_id;
	
-- VIEW can also be dropped
DROP VIEW IF EXISTS customer_info;

-- Change name of the view
ALTER VIEW customer_info RENAME TO c_info;
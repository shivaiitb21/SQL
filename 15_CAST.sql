-- CAST Operator
-- Convert from One data type to other
SELECT CAST('5' AS INTEGER) AS new_result;
-- Above query is exactly same as
SELECT '5' :: INTEGER;

-- Convert integer to string to count the number of digits in an integer
SELECT * FROM rental;
SELECT CAST(inventory_id AS VARCHAR) FROM rental;
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;

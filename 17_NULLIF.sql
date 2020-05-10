-- Create a testing table
CREATE TABLE depts(
 first_name VARCHAR(50),
 department VARCHAR(50)	
)

-- Inserting values into table
INSERT INTO depts(
 first_name,
 department
)
VALUES
('smn','A'),
('gaa', 'A'),
('vvp', 'B');

-- Ratio between A and B
SELECT(
	SUM(CASE WHEN department= 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
) AS dept_ratio
FROM depts;

-- But when the denominator is 0 then issue comes
DELETE FROM depts
WHERE department = 'B';

-- See now the denominator is 0 -> you get an error
SELECT(
	SUM(CASE WHEN department= 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
) AS dept_ratio
FROM depts;

-- Now here you can use NULLIF (If both equal then null or else return first argument)
SELECT(
SUM(CASE WHEN department= 'A' THEN 1 ELSE 0 END)/
NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0)

) AS dept_ratio
FROM depts;



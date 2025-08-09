DROP TABLE IF EXISTS employee4;
CREATE TABLE employee4(
         employee_id SERIAL PRIMARY KEY,
		 first_name VARCHAR(50) NOT NULL,
		 last_name VARCHAR(20)NOT NULL,
		 email VARCHAR(50),
		 department VARCHAR(20),
		 salary NUMERIC(20),
		 joining_date DATE,
		 age INT
		 );
		 
         
SELECT * FROM employee4;


-- IS NULL  OPERATOR--

SELECT first_name,last_name,email FROM employee4
WHERE email IS NULL;


--ORDER BY OPERATOR--


SELECT first_name,last_name,salary FROM employee4
ORDER BY salary DESC;


SELECT first_name,last_name,salary FROM employee4
LIMIT 7;



SELECT first_name,last_name,salary FROM employee4
ORDER BY salary DESC
LIMIT 7;



SELECT first_name,last_name,salary FROM employee4
ORDER BY salary ASC
LIMIT 7;

SELECT DISTINCT department
FROM employee4;



SELECT COUNT (DISTINCT department)
FROM employee4;


SELECT COUNT (DISTINCT department) AS DEPART_UNIQUE_COUNT
FROM employee4;



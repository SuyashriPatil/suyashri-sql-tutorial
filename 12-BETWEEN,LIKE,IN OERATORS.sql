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


--BETWEEN OPERATOR--

SELECT  first_name,last_name,salary
FROM employee4
WHERE salary BETWEEN 40000 AND 60000;

--LIKE OPERATOR--
SELECT  first_name,last_name,email
FROM employee4
WHERE email LIKE '%@gmail.com';


SELECT  first_name FROM employee4
WHERE first_name LIKE 'S%';

SELECT  first_name FROM employee4
WHERE first_name LIKE '%a';

SELECT  first_name FROM employee4
WHERE first_name LIKE '%i%';

SELECT  first_name,last_name,department FROM employee4
WHERE department IN ('IT','Marketing');


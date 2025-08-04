DROP TABLE IF EXISTS employee3;
CREATE TABLE employee3(
         employee_id SERIAL PRIMARY KEY,
		 first_name VARCHAR(50) NOT NULL,
		 last_name VARCHAR(20)NOT NULL,
		 email VARCHAR(50),
		 department VARCHAR(20),
		 salary NUMERIC(20),
		 joining_date DATE,
		 age INT
		 );
		 
         
SELECT * FROM employee3;



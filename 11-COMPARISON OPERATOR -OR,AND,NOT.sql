DROP TABLE IF EXISTS emp;
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

---USING AND OPERATOR---
SELECT * FROM employee4 
WHERE age>=40 AND salary>=50000;

---USING OR OPERATOR---
SELECT * FROM employee4
WHERE   age>=60 OR salary>=90000;


---USING NOT OPERATOR---
SELECT * FROM employee4
WHERE NOT (department='IT');










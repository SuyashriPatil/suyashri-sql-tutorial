DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
         employee_id SERIAL PRIMARY KEY,
		 first_name VARCHAR(50) NOT NULL,
		 last_name VARCHAR(50) NOT NULL,
		 department VARCHAR(50),
		 salary DECIMAL(10,2)CHECK (salary>0),
		 joining_date DATE NOT NULL,
		 age INT CHECK(age>=18)
);
SELECT * FROM employee;

INSERT INTO employee(first_name,last_name,department,salary,joining_date,age)VALUES
          ('Amit','Sharma','IT',600000.00,'2022-05-21',29),
          ('Neha','Patel','HR',550000.00,'2021-08-01',32),
          ('Ravi','Kumar','Finance',700000.00,'2020-05-03',35),
          ('Suyashri','Patil','Data Analyst',650000.00,'2025-12-7',22),
          ('Vaishnavi','Patil','IT',680000.00,'2022-11-05',29),
          ('Suresh','Reddy','Operation',500000.00,'2023-01-10',26);


SELECT first_name,department FROM employee;

UPDATE employee SET salary=salary+(salary*0.1) WHERE department='IT';

DELETE  FROM employee
WHERE age>=34;


ALTER TABLE employee
ADD COLUMN email VARCHAR(100);

ALTER TABLE employee
RENAME COLUMN department TO  dept_name;


SELECT first_name,last_name,joining_date FROM employee
WHERE joining_date>'2021-01--01';


SELECT * FROM employee;

ALTER TABLE employee
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

SELECT first_name,age,salary FROM employee ORDER BY salary DESC;

INSERT INTO employee (first_name,last_name,dept_name,salary,joining_date,age)VALUES
('Raj','Singh','Marketing',60000,'2023-09-15',30);


UPDATE employee SET age=age+1;
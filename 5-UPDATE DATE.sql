DROP TABLE employee;
CREATE TABLE employee(
              employee_id SERIAL PRIMARY KEY,
              name VARCHAR(100) NOT NULL,
			  position VARCHAR(100) NOT NULL,
			  email VARCHAR(100) UNIQUE,
			  age INT CHECK(AGE>=18),
			  department VARCHAR(100) ,
			  date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
			  salary INT
		 );
insert into employee(name,position,email,age,department,date,salary)
values('suyashri patil ','data analyst','suyashri@gmail.com',22,'data science','2022-05-15',65000.00),
	   ('alisha ','devops','alishapatil@gmail.com',23,'computer science','2021-09-20',75000.00),
	   ('vaishnavi patil ','business communication','vaishnavipatil@gmail.com',25,'computer science','2020-07-10',82000.00),
	   ('nikita javadekar ','software engineer','nikitajavadeka@gmail.com',24,'computer science','2018-12-5',58000.00),
	   ('suhani lad ','web developer','suhanilad@gmail.com',22,'computer science','2019-10-25',62000.00);

SELECT *  FROM employee;

SELECT employee_id,name,age FROM employee;

UPDATE employee
SET age=26
WHERE name='suyashri patil ';


SELECT * FROM employee ORDER BY name ASC;


SELECT * FROM employee ORDER BY age ASC;

UPDATE employee
SET  salary=80000
WHERE position='software engineer';



UPDATE employee
SET age=28,department='IT'
WHERE  name='suhani lad ';


UPDATE employee
SET age=age+1
WHERE email LIKE '%@gmail.com';



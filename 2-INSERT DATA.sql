DROP TABLE employee;
CREATE TABLE employee(
              employee_id SERIAL PRIMARY KEY,
           name VARCHAR(100) NOT NULL,
			  position VARCHAR(100) NOT NULL,
			  age INT,
			  department VARCHAR(100) ,
			  date DATE,
			  salary INT
		 );

insert into employee(name,position,age,department,date,salary)
values('suyashri patil ','data analyst',22,'data science','2022-05-15',65000.00),
	   ('alisha ','devops',23,'computer science','2021-09-20',75000.00),
	   ('vaishnavi patil ','business communication',25,'computer science','2020-07-10',82000.00),
	   ('nikita javadekar ','software engineer',24,'computer science','2018-12-5',58000.00),
	   ('suhani lad ','web developer',22,'computer science','2019-10-25',62000.00);

ALTER TABLE employee
RENAME COLUMN position2 TO position;

         
SELECT * FROM employee;

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;
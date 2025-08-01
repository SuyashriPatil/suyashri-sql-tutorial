
CREATE TABLE devops(
              name VARCHAR(100) NOT NULL,
			  position VARCHAR(100) NOT NULL,
			  age INT,
			  department VARCHAR(100) ,
			  date DATE,
			  salary INT
			  

);
DROP TABLE devops;

INSERT INTO devops(name,position,age,department,date,salary)
VALUES('suyashri patil ','data analyst',22,'data science','2022-05-15',65000.00),
	   ('alisha ','devops',23,'computer science','2021-09-20',75000.00),
	   ('vaishnavi patil ','business communication',25,'computer science','2020-07-10',82000.00),
	   ('nikita javadekar ','software engineer',24,'computer science','2018-12-5',58000.00),
	   ('suhani lad ','web developer',22,'computer science','2019-10-25',62000.00);


ALTER TABLE devops
RENAME COLUMN name TO emp_Name;

SELECT *  FROM devops;

ALTER TABLE devops
ALTER COLUMN age TYPE SMALLINT;

ALTER TABLE devops
ALTER COLUMN department SET NOT NULL;

ALTER TABLE devops
DROP CONSTRAINT age;

ALTER TABLE devops
ADD CONSTRAINT age CHECK(AGE>=18);



insert into devops(name,position,age,department,date,salary)
values('suya patil ','data science',18,'computer science','2022-12-15',6985000.00);

ALTER TABLE devops
RENAME TO customers;

SELECT *  FROM customers;
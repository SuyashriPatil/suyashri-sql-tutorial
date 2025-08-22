DROP TABLE employeee;
DROP TABLE Departments;


CREATE TABLE employeee(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT
);

INSERT INTO employeee(first_name,last_name,department_id)
VALUES
('Suyashri','Patil',101),
('Alisha','Patil',102),
('Vaishnavi','Suryavanshi',103),
('Nikita','Javadekar',104),
('Snehal','Palekar',105);

SELECT * FROM employeee;


CREATE TABLE Departments
(
 department_id INT PRIMARY KEY,
 department_name VARCHAR(50)

);


INSERT INTO Departments(department_id,department_name)
VALUES
(101,'Sales'),
(102,'Marketing'),
(103,'IT'),
(104,'HR'),
(106,'IT');


SELECT * FROM Departments;


SELECT e.employee_id,e.first_name,e.last_name,d.department_id,d.department_name 
FROM employeee e 
FULL OUTER JOIN
Departments d
ON e.department_id=d.department_id;


SELECT e.employee_id,e.first_name,e.last_name,d.department_id,d.department_name 
FROM employeee e 
LEFT OUTER JOIN
Departments d
ON e.department_id=d.department_id;


SELECT e.employee_id,e.first_name,e.last_name,d.department_id,d.department_name 
FROM employeee e 
RIGHT OUTER JOIN
Departments d
ON e.department_id=d.department_id;




SELECT e.employee_id,e.first_name,e.last_name,d.department_name 
FROM employeee e 
CROSS JOIN
Departments d;


SELECT e.employee_id,e.first_name,e.last_name,d.department_name 
FROM employeee e 
CROSS JOIN
Departments d;



SELECT e1.first_name AS Employee_name1,
       e2.first_name AS Employee_name2

FROM employeee e1 JOIN employeee e2  
ON  E1.department_id=e2.department_id AND e1.employee_id != e2.employee_id;
























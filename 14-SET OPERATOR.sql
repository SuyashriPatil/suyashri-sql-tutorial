CREATE TABLE student_2025(
  student_id INT PRIMARY KEY,
  student_name VARCHAR(100),
  course VARCHAR(50)
);


INSERT INTO student_2025(student_id,student_name,course)VALUES
(1,'Vir Sharma','Computer Science'),
(2,'Suyashri Patil','Data Science'),
(3,'Savi Patel','Electronics'),
(4,'Hardik Pandya','Civil Engineering'),
(5,'Manoti Khot','Mechanical Engineering');



SELECT * FROM student_2025;

CREATE TABLE student_2026(
  student_id INT PRIMARY KEY,
  student_name VARCHAR(100),
  course VARCHAR(50)
);


INSERT INTO student_2026(student_id,student_name,course)VALUES

(3,'Savi Patel','Electronics'),
(4,'Hardik Pandya','Civil Engineering'),
(5,'Manoti Khot','Mechanical Engineering'),
(6,'Dipti Shete','Mathamatics'),
(7,'Soundarya Savarde','Physics'),
(8,'Gayatri Chougale','Chemestry');

SELECT * FROM student_2026;

--UNION OPERATOR--

SELECT student_name,course FROM student_2025
UNION 
SELECT student_name,course FROM student_2026;


SELECT student_name,course FROM student_2025
UNION ALL
SELECT student_name,course FROM student_2026;


SELECT student_name,course FROM student_2025
INTERSECT
SELECT student_name,course FROM student_2026;


SELECT student_name,course FROM student_2025
EXCEPT
SELECT student_name,course FROM student_2026;


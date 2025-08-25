CREATE DATABASE Assignments;
DROP TABLE Hospital;

CREATE TABLE Hospital (
    hospital_id SERIAL PRIMARY KEY,
    hospital_name VARCHAR(100),
    location VARCHAR(100),
    department VARCHAR(50),
    doctors_count INT,
    patients_count INT,
    admission_date DATE,
    discharge_date DATE,
    medical_expenses NUMERIC(12,2)
);


SELECT * FROM Hospital;

--Write an SQL query to find the total number of patients across all hospitals.--

SELECT SUM(patients_count) AS total_patients
FROM Hospital;

--Retrieve the average count of doctors available in each hospital.--
SELECT  hospital_name,
AVG(doctors_count) AS avg_doctors
FROM Hospital
GROUP BY hospital_name;

--Find the top 3 hospital departments that have the highest number of patients--

SELECT department,
SUM(patients_count) AS total_patients
FROM Hospital
GROUP BY department
ORDER BY total_patients DESC
LIMIT 3;

--Identify the hospital that recorded the highest medical expenses.--

SELECT hospital_name,location,department,medical_expenses
FROM Hospital
ORDER BY medical_expenses DESC
LIMIT 1;

--Calculate the average medical expenses per day for each hospital.--

SELECT hospital_name,location,department,medical_expenses,admission_date,discharge_date,
ROUND(medical_expenses / (GREATEST(1, discharge_date - admission_date + 1)), 2) AS avg_expenses_per_day
FROM Hospital;


--Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date.--

SELECT  hospital_name, location, department, admission_date,discharge_date,(discharge_date - admission_date) AS stay_duration
FROM Hospital
ORDER BY stay_duration DESC
LIMIT 1;

--Count the total number of patients treated in each city.--

SELECT location AS city,
SUM(patients_count) AS total_patients
FROM Hospital
GROUP BY location
ORDER BY total_patients DESC;



--Calculate the average number of days patients spend in each department.--


SELECT department,
ROUND(AVG(discharge_date - admission_date), 2) AS avg_stay_days
FROM Hospital
GROUP BY department
ORDER BY avg_stay_days DESC;

--Find the department with the least number of patients.--
SELECT  department,
SUM(patients_count) AS total_patients
FROM Hospital
GROUP BY department
ORDER BY total_patients ASC
LIMIT 1;

--Group the data by month and calculate the total medical expenses for each month.--

SELECT TO_CHAR(admission_date, 'YYYY-MM') AS month,
SUM(medical_expenses) AS total_expenses
FROM Hospital
GROUP BY TO_CHAR(admission_date, 'YYYY-MM')
ORDER BY month;







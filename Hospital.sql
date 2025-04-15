CREATE TABLE Hospitals(
		Hospital_Name VARCHAR(100),
		Location VARCHAR(100),
		Department VARCHAR(100),
		Doctors_Count	INT,
		Patients_Count  INT,
		Admission_Date DATE,
		Discharge_Date DATE,
		Medical_Expenses NUMERIC(20,2)
);

SELECT * FROM Hospitals;

                                 -- QUESTIONS

-- 1) Write an SQL Query to find the total number of patients across all hospital:

SELECT SUM(patients_count) AS Total_patients
FROM Hospitals;

-- 2) AVERAGE number of doctors per hospital

SELECT hospital_name, AVG(doctors_count) AS Avg_doctors
FROM Hospitals
GROUP BY hospital_name;

-- 3) TOP 3 departments of higher number of patients:

SELECT department,SUM(patients_count) AS Total_patients
FROM Hospitals
GROUP BY department
ORDER BY Total_patients DESC LIMIT 3;

-- 4) Hospital with the maximum medical expenses:

SELECT hospital_name,SUM(medical_expenses) AS Maximum_expense
FROM Hospitals
GROUP BY hospital_name
ORDER BY Maximum_expense DESC LIMIT 1 ;

-- 5) Daily average medical expenses:

SELECT hospital_name, AVG(medical_expenses) AS Avg_expense 
FROM Hospitals
GROUP BY hospital_name
ORDER BY Avg_expense DESC;

-- 6) Longest hospital Day:

SELECT admission_date,discharge_date,(discharge_date - admission_date) AS hospital_days
FROM Hospitals
ORDER BY hospital_days DESC LIMIT 1;

-- 7) Total Patients treated per city:

SELECT location,SUM(patients_count) AS City_patients
FROM Hospitals
GROUP BY location
ORDER BY City_patients DESC;

-- 8) AVG length of stay per department:

SELECT department,AVG(discharge_date - admission_date) AS Average_day
FROM Hospitals
GROUP BY department;

-- 9)Department with lower number of patients:
SELECT department,SUM(patients_count) AS Total_patients
FROM Hospitals
GROUP BY department
ORDER BY Total_patients ASC LIMIT 1;

-- 10) Monthly expense report 
								 
SELECT DATE_TRUNC('month', admission_date) AS month,
SUM(medical_expenses) AS Total_medical_expense 
FROM Hospitals
GROUP BY month
ORDER BY month;

































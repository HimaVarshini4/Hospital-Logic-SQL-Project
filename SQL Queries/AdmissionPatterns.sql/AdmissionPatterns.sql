-- How many admissions occurred for each admission type?
SELECT Admission_Type, COUNT(*) total_admissions
FROM healthcare 
GROUP BY Admission_Type;


-- How many patients were admitted in each month? (Using Date_of_Admission)
SELECT COUNT(*) total_patients, FORMAT(Date_of_Admission, 'MM') AS month_of_admission
FROM healthcare
GROUP BY FORMAT(Date_of_Admission, 'MM')
ORDER BY month_of_admission;
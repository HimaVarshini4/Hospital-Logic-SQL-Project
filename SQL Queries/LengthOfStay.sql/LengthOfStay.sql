-- For each patient, calculate how many days they stayed in the hospital
SELECT DISTINCT Name, Date_of_Admission, Discharge_Date, DATEDIFF(DAY, Date_of_Admission, Discharge_Date) total_number_of_days
FROM healthcare
ORDER BY Name;


-- Who had the longest hospital stay?
SELECT TOP 1 Name, DATEDIFF(DAY, Date_of_Admission, Discharge_Date) AS total_number_of_days
FROM healthcare
ORDER BY total_number_of_days DESC;

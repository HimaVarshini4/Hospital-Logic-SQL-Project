-- How many patients are there by gender?
SELECT COUNT(Name) total_patients, Gender 
FROM healthcare 
GROUP BY Gender;


-- What is the Average age of patients?
SELECT AVG(Age) AS average_age
FROM healthcare;
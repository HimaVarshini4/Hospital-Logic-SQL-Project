-- What are the most common medical conditions among patients?
SELECT Medical_Condition
FROM healthcare
GROUP BY Medical_Condition;


-- List all medical conditions along with how many patients have each
SELECT Medical_Condition, COUNT(Name) 
FROM healthcare
GROUP BY Medical_Condition;
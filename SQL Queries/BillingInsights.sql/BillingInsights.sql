-- What is the average bill amount for each hospital?
SELECT Hospital, AVG(Billing_Amount) AS average_amount
FROM healthcare
GROUP BY Hospital;


-- Which patient had the highest billing amount?
SELECT TOP 1 Name, SUM(Billing_amount) AS total_amount
FROM healthcare
GROUP BY Name
ORDER BY total_amount DESC;
-- Group patients into age groups (0-18, 19-35, 36-50, 51-70, 70+). How many patients are in each age group?
SELECT COUNT(*) total_patients,
	CASE 
		WHEN Age BETWEEN 0 AND 18 THEN '0-18'
		WHEN Age BETWEEN 19 AND 35 THEN '19-35'
		WHEN Age BETWEEN 36 AND 50 THEN '36-50'
		WHEN Age BETWEEN 51 AND 70 THEN '51-70'
		ELSE '70+'
	END AS age_group 
FROM healthcare
GROUP BY 
	CASE 
		WHEN Age BETWEEN 0 AND 18 THEN '0-18'
		WHEN Age BETWEEN 19 AND 35 THEN '19-35'
		WHEN Age BETWEEN 36 AND 50 THEN '36-50'
		WHEN Age BETWEEN 51 AND 70 THEN '51-70'
		ELSE '70+'
	END
SELECT *
FROM telco_churn_cleaned;

-- finding out the unique reasons
SELECT DISTINCT 
	COUNT(*) AS frequency,
    `Churn Reason`
FROM telco_churn_cleaned
WHERE `Churn Value` = 1
	AND `Churn Reason` IS NOT NULL
    AND `Churn Reason` != ''
GROUP BY `Churn Reason`
ORDER BY frequency DESC; #found out there's a don't know as one of the top reasons

-- finding out the number of unique reasons
SELECT COUNT(DISTINCT `Churn Reason`) AS no_of_reasons
FROM telco_churn_cleaned
WHERE `Churn Reason` != 'Don\'t know';

-- finally finding out the top 5 reasons
SELECT 
    `Churn Reason`,
    COUNT(*) AS frequency
FROM telco_churn_cleaned
WHERE `Churn Value` = 1
	AND `Churn Reason` IS NOT NULL
    AND `Churn Reason` != 'Don\'t know'
GROUP BY `Churn Reason`
ORDER BY frequency DESC
LIMIT 5;
SELECT *
FROM telco_churn_cleaned;

SELECT 
	Gender,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate_by_gender
FROM telco_churn_cleaned
GROUP BY Gender
ORDER BY churn_rate_by_gender;

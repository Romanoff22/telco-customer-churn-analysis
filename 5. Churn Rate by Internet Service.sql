SELECT * 
FROM telco_churn_cleaned;

SELECT
	`Internet Service`,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate_by_internet_service
FROM telco_churn_cleaned
GROUP BY `Internet Service`
ORDER BY churn_rate_by_internet_service DESC;
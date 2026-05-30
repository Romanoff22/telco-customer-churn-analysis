SELECT *
FROM telco_churn_cleaned;

SELECT 
	`Service Count`,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate_by_service_count
FROM telco_churn_cleaned
GROUP BY `Service Count`
ORDER BY churn_rate_by_service_count DESC;
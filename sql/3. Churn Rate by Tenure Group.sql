SELECT *
FROM telco_churn_cleaned;

SELECT 
    `Tenure Groups`,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate_by_tenure_group
FROM telco_churn_cleaned
GROUP BY `Tenure Groups`
ORDER BY churn_rate_by_tenure_group DESC;

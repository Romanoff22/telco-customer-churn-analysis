SELECT *
FROM telco_churn_cleaned;

SELECT 
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate
FROM telco_churn_cleaned;
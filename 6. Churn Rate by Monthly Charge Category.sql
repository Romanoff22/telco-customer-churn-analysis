SELECT *
FROM telco_churn_cleaned;

SELECT 
    `Charge Category`,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate_by_charge_category
FROM telco_churn_cleaned
GROUP BY `Charge Category`
ORDER BY FIELD(`Charge Category`, 'Low', 'Medium', 'High');
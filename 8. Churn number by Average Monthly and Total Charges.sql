SELECT *
FROM telco_churn_cleaned;

SELECT 
    `Churn Value`,
    ROUND(AVG(`Monthly Charges`), 2) AS avg_monthly_charges,
    ROUND(AVG(`Total Charges`), 2) AS avg_total_charges
FROM telco_churn_cleaned
GROUP BY `Churn Value`;
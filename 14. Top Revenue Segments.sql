SELECT * 
FROM telco_churn_cleaned;

SELECT 
    Contract,
    `Internet Service`,
    COUNT(*) AS customers,
    ROUND(SUM(`Total Charges`), 2) AS total_revenue,
    ROUND(AVG(`Monthly Charges`), 2) AS avg_monthly
FROM telco_churn_cleaned
GROUP BY Contract, `Internet Service`
ORDER BY total_revenue DESC;
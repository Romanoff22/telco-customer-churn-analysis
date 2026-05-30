SELECT *
FROM telco_churn_cleaned;

SELECT 
	Contract,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`)/COUNT(*) * 100, 2) AS churn_rate_by_contract
FROM telco_churn_cleaned
GROUP BY Contract
ORDER BY churn_rate_by_contract DESC;

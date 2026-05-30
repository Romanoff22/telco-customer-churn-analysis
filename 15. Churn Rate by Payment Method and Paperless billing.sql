SELECT * 
FROM telco_churn_cleaned;

SELECT
	`Payment Method`, `Paperless Billing`,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate_by_payment_method
FROM telco_churn_cleaned
GROUP BY `Payment Method`, `Paperless Billing`
ORDER BY `Payment Method`, `Paperless Billing`;
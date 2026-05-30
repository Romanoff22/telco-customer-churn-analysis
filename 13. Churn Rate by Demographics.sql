SELECT 'Senior Citizen' AS demographic, `Senior Citizen` AS segment,
    COUNT(*) AS total, SUM(`Churn Value`) AS churned,
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2) AS churn_rate
FROM telco_churn_cleaned GROUP BY `Senior Citizen`

UNION 

SELECT 'Partner', Partner,
    COUNT(*), SUM(`Churn Value`),
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2)
FROM telco_churn_cleaned GROUP BY Partner

UNION 

SELECT 'Dependents', Dependents,
    COUNT(*), SUM(`Churn Value`),
    ROUND(SUM(`Churn Value`) / COUNT(*) * 100, 2)
FROM telco_churn_cleaned GROUP BY Dependents;
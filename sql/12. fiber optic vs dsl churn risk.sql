-- Customers without a tech support plan are more exposed to unresolved service issues. 
-- I want to know whether this exposure is higher among Fiber Optic users vs DSL users.

WITH FiberVsDSL AS (
    -- Isolating only Fiber Optic and DSL customers.
    SELECT
        `Internet Service`,
        `Tech Support`,
        `Churn Value`,
        Contract
    FROM telco_churn_cleaned
    WHERE `Internet Service` IN ('Fiber Optic', 'DSL')
)

SELECT
    `Internet Service`,
    `Tech Support`,
    COUNT(*) AS total_customers,
    SUM(`Churn Value`) AS already_churned,
    ROUND(SUM(`Churn Value`) * 100.0 / COUNT(*), 2) AS churn_rate
FROM FiberVsDSL
GROUP BY `Internet Service`, `Tech Support`
ORDER BY `Internet Service`, `Tech Support`;

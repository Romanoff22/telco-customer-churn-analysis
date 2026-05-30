SELECT *
FROM telco_churn_cleaned;

SELECT (SELECT COUNT(*) FROM telco_churn_cleaned # i could have used sum(churnvalue) too
        WHERE `Churn Value` = 1
	) AS total_churned,
    COUNT(*) AS churned_above_avg,
    ROUND(AVG(`Monthly Charges`), 2) AS avg_monthly,
    ROUND(COUNT(*) / (
		SELECT COUNT(*) FROM telco_churn_cleaned
        WHERE `Churn Value` = 1
	) * 100, 2) AS above_average_pct
FROM telco_churn_cleaned
WHERE `Churn Value` = 1
  AND `Monthly Charges` > (
      SELECT AVG(`Monthly Charges`) FROM telco_churn_cleaned
  );
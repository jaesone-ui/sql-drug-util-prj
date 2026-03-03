-- Q2: What are the top 5 most prescribed drugs per state?


WITH same_drug AS (
    SELECT
        us_state,
        product_name,
        SUM(prescription_count) AS distinct_prescriptions
        FROM drug_util_2025_clean
        GROUP BY us_state, product_name
),
top_per_state AS (
    SELECT 
        us_state,
        product_name AS drug_name,
        distinct_prescriptions AS prescription_count,
        RANK() OVER(PARTITION BY us_state ORDER BY distinct_prescriptions DESC) AS ps_rank
    FROM same_drug
)

SELECT *
FROM top_per_state
WHERE ps_rank <= 5
ORDER BY us_state, prescription_count DESC;
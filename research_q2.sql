-- Q2: What are the top 5 most prescribed drugs per state?

WITH top_per_state AS (
    SELECT 
        us_state,
        product_name AS drug_name,
        prescription_count,
        RANK() OVER(PARTITION BY us_state ORDER BY prescription_count DESC) AS ps_rank
    FROM drug_util_2025_clean
)

SELECT *
FROM top_per_state
WHERE ps_rank <= 5
ORDER BY us_state, prescription_count DESC;
-- Q1: What drugs have a total reimbursement amount greater than 0.5% 
--     of total anuual Medicaid drug spending? Sorted by reimbursement cost.

WITH drug_metrics AS ( -- total reimbursement & number of prescriptions by drug
    SELECT
        product_name,
        SUM(total_reimbursed) AS cost,
        SUM(prescription_count) AS prescriptions
    FROM drug_util_2025_clean
    GROUP BY product_name
),
medicaid_annual AS ( -- total annual medicaid reimbursement
    SELECT SUM(medicaid_reimbursed) AS total
    FROM drug_util_2025_clean
)

SELECT 
    d.product_name AS drug_name,
    d.cost AS total_reimbursement,
    d.cost - (0.005 * m.total) AS excess_amount
FROM drug_metrics d, medicaid_annual m
WHERE d.cost > (0.005 * m.total)
ORDER BY d.cost DESC;

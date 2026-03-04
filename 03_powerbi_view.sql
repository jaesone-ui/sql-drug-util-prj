CREATE VIEW powerbi_analysis AS
SELECT
    year,
    us_state,
    product_name,
    SUM(prescription_count) AS total_prescriptions,
    SUM(medicaid_reimbursed) AS total_reimbursed
FROM drug_util_combined_clean
GROUP BY year, us_state, product_name;
CREATE TABLE drug_util_2025_clean AS
    SELECT 
        us_state,
        product_name,
        units_reimbursed,
        prescription_count,
        total_reimbursed,
        medicaid_reimbursed,
        non_medicaid_reimbursed
    FROM drug_util_2025
    WHERE suppress_used='FALSE'; -- drug details are null when suppressed

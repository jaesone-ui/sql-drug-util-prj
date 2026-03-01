
CREATE TABLE drug_util_2025_clean AS
    SELECT 
        us_state,
        UPPER(TRIM(product_name)) AS product_name, -- ensures similar entries are correctly grouped
        units_reimbursed,
        prescription_count,
        total_reimbursed,
        medicaid_reimbursed,
        non_medicaid_reimbursed
    FROM drug_util_2025
    WHERE suppress_used='FALSE'; -- drug metrics are null when suppressed

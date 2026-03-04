CREATE TABLE drug_util_combined_clean AS
    SELECT 
        year, -- added for powerbi time series analysis
        us_state,
        UPPER(TRIM(product_name)) AS product_name, -- ensures similar entries are correctly grouped
        units_reimbursed,
        prescription_count,
        total_reimbursed,
        medicaid_reimbursed,
        non_medicaid_reimbursed
    FROM drug_util_combined
    WHERE suppress_used='FALSE'; -- drug metrics are null when suppressed

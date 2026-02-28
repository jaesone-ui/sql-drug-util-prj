CREATE TABLE drug_util_2025 (
    util_type CHAR(4),
    us_state CHAR(2),
    ndc CHAR(11),
    labeler_code CHAR(5),
    product_code CHAR(4),
    package_code CHAR(2),
    year INT,
    quarter INT,
    suppress_used BOOLEAN,
    product_name VARCHAR(255),
    units_reimbursed NUMERIC(14, 3),
    prescription_count NUMERIC(9, 0),
    total_reimbursed NUMERIC(14, 2),
    medicaid_reimbursed NUMERIC(12, 2),
    non_medicaid_reimbursed NUMERIC(12, 2)
)
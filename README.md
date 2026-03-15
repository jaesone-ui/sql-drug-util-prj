# SQL Drug Utilization Project

## Project Overview
A SQL project that tracks state drug spending per and Medicaid reimbursement per state to practice using CTEs and window functions

## Tech Stack
Database: PostgreSQL  
Tools: VS Code, PowerBI

## Datasets
State Drug Utilization Data (2023-2025)  
[2023](https://catalog.data.gov/dataset/state-drug-utilization-data-2023)
[2024](https://catalog.data.gov/dataset/state-drug-utilization-data-2024)
[2025](https://catalog.data.gov/dataset/state-drug-utilization-data-2025)

## Research Questions
1. What drugs have a total reimbursement amount greater than 0.5% of total anuual Medicaid drug spending?
- [0.5% Source](https://www.cms.gov/newsroom/fact-sheets/medicaid-drug-price-verification-survey-and-pharmacy-benefit-manager-drug-price-transparency)
2. What are the top 5 most prescribed drugs per state?

## Observations
- Drugs that are costing Medicaid hundreds of millions of dollars in 2025 (like Ozempic) do not land in the top 5 most prescribed drugs in any state
- Reimbursement for high-cost drugs reduced by half from 2023 & 2024 to 2025
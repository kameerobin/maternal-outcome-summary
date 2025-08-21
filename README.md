# Maternal Outcomes Summary Table – SAS Frequency Analysis

This project demonstrates how to summarize maternal health indicators using SAS with weighted frequency analysis. The dataset includes various maternal and neonatal outcomes collected over multiple years.

## 📊 Dataset Overview

The dataset includes simulated data representing counts of:

- Maternal deaths (by cause)
- Delivery complications
- Neonatal deaths (e.g., due to asphyxia, prematurity, infection)
- Delivery type (e.g., C-section)
- Preterm and low birthweight deliveries

Each row represents a summary count for a given year.

## 🛠 Skills Demonstrated

- SAS programming: `PROC FREQ`, `DATA step`, `WEIGHT` usage
- Data cleaning and formatting
- Categorical outcome analysis
- Code documentation and reproducibility

## 📁 Files Included

- `mock_maternal_outcomes.csv`: Mock dataset used for analysis
- `maternal_summary.sas`: Clean SAS script demonstrating analysis workflow
- `README.md`: This file

## 🔒 Privacy & Ethics

This project uses mock data that does **not** contain any real or identifiable patient information. It is safe to share publicly and intended solely for demonstration and portfolio purposes.

## 📈 Sample Output (SAS)

```sas
proc freq data=mock_maternal_outcomes;
   tables num_matdeath_HF_month_new*year / chisq;
   weight count;
run;


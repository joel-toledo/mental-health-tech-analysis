# Mental Health in Tech — Treatment Analysis

## Overview
Analysis of mental health treatment patterns among tech industry workers, 
based on the OSMI Mental Health in Tech Survey (1,252 respondents across 
4 countries).

**Tools used:** Excel · SQL (SQLite) · Power BI  
**Dataset:** [OSMI Mental Health in Tech Survey](https://www.kaggle.com/datasets/osmi/mental-health-in-tech-survey)

---

## Key Findings

- **Gender gap:** Women seek treatment at 68% vs 45% for men, suggesting 
  cultural barriers among male tech workers.
- **Strongest predictor:** Employees whose mental health "often" interferes 
  with work seek treatment at 85%, vs 14% who report no interference.
- **Company size matters:** Large companies (+1000 employees) offer mental 
  health benefits in 65% of cases vs 12% in small companies (1-5 employees).
- **Global consistency:** Treatment rates range from 47% (Germany) to 54% 
  (USA), suggesting the issue is industry-wide.

---

## Project Structure

| File | Description |
|------|-------------|
| `mental_health_RAW.csv` | Original dataset, unmodified |
| `Mental_Health_LIMPIO.xlsx` | Cleaned data + pivot tables + charts |
| `mental_health.db` | SQLite database |
| `mental_health_queries.sql` | SQL analysis queries |
| `Mental_Health_PBI.pbix` | Power BI dashboard |

---

## Process

**1. Data Cleaning (Excel)**  
Standardized Gender column (50+ variations → Male/Female/Other), 
removed invalid ages, fixed company size format errors.

**2. Exploratory Analysis (Excel)**  
Built pivot tables to identify patterns across gender, company size, 
remote work and work interference variables.

**3. SQL Analysis (SQLite)**  
Wrote 5 queries to extract insights: gender distribution, treatment 
profiles, country comparison, supervisor influence and combined 
factor analysis.

**4. Dashboard (Power BI)**  
Built interactive dashboard with filters by gender and country, 
showing treatment rates across key variables.

---

## Dashboard Preview
*(Add a screenshot of your Power BI dashboard here)*

---

*Data source: Open Sourcing Mental Illness (OSMI) — osmihelp.org*

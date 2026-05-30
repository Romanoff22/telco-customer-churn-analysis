# Telco Customer Churn Analysis

An end-to-end data analysis project identifying the key drivers of customer churn in a telecom business, using Python, MySQL and Power BI.

---

## Project Overview

**Dataset:** [IBM Telco Customer Churn](https://www.kaggle.com/datasets/yeanzc/telco-customer-churn-ibm-dataset)

**Overall churn rate:** 26.6% (1,869 customers)  

**Lost MRR to churn:** ~$139K/month

This project follows a full analytics workflow: raw data cleaning → SQL-based business queries → exploratory data analysis → an interactive Power BI dashboard.

---

## Key Findings

- Month-to-month customers churn at 42.7% — nearly 15x the rate of two-year contract holders (2.8%)
- 47.7% of customers churn within their first 12 months; by year six that drops to 6.6%
- Fiber optic customers churn at 41.9% — more than double the DSL rate (19%) and tech support roughly halves churn across both service types
- The highest-risk segment: Fiber optic + Month-to-month customers churn at 54.6% while generating $4.19M in total dataset revenue
- Competitors are the #1 stated reason for leaving (36.2%) while price ranks 9th at 5.7% — the problem is product competitiveness, not pricing.

---

## Repository Structure

├── data/

│   ├── Telco_customer_churn.xlsx       # Raw dataset

│   └── telco_churn_cleaned.csv         # Cleaned dataset

│

├── notebooks/

│   ├── 01_Cleaning.ipynb               # Data cleaning & preprocessing

│   └── 02_EDA.ipynb                    # Exploratory data analysis

│

├── sql/

│   └── *.sql                           # 16 business queries

│

├── dashboard/

│   └── visualization.pbix              # Power BI dashboard

│

└── README.md

---

## Tools Used

- Python (pandas, matplotlib, seaborn) — data cleaning & EDA
- MySQL — business queries & segmentation  
- Power BI — interactive dashboard
- Google Colab — notebook environment

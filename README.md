# Zepto-Analysis-Sql

📊 Zepto Dataset Analysis using SQL

A complete SQL-based analysis of Zepto product data, covering data cleaning, transformation, KPI generation, and business-driven insights.
This project is designed to demonstrate SQL skills including filtering, joins, aggregation, window functions, and exploratory analysis on real-world-like e-commerce data.


📁 Project Overview

This project analyzes a dataset exported from Zepto (an online grocery delivery platform).
The aim is to:

Clean raw CSV data

Load it into MySQL

Run exploratory & business-oriented SQL queries

Derive insights to understand product pricing, inventory status, and customer-focused metrics

🛠️ Tech Stack
Tool	Purpose
MySQL 8.0	Database & SQL queries
MySQL Workbench	Data import & visualization
CSV Files	Raw dataset from Zepto
Python / Pandas (optional)	Additional cleaning



📈 Key SQL Operations Performed
✔ Data Cleaning

Remove rows with missing or zero MRP

Standardize data types

Fix booleans for outOfStock

Handle inconsistent product names

✔ Exploratory Queries

Find highest and lowest priced items

List unavailable products

Identify duplicate product names

Distribution of MRP ranges

✔ Business Insights

Price comparison between brands

Count of out-of-stock items

High-MRP products by category

Inventory readiness metrics



📘 Insights Summary

Many products were marked as out of stock despite having high MRP, suggesting supply issues in premium categories.

Several duplicate product names existed—important for data normalization.

MRP distribution was skewed: most products fall under ₹200.

Some categories had a significantly higher percentage of unavailable items.

Full insights are documented in insights.md.



🚀 Future Improvements

Add visualizations (Power BI / Tableau / Python Matplotlib)

Add automated data cleaning script

Build dashboard for real-time inventory monitoring

Integrate brand-level comparisons



🤝 Contributing

Pull requests are welcome!
For major changes, please open an issue first to discuss what you’d like to modify.

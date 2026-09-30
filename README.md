# Retail Inventory & Stock Optimization Analytics

An end-to-end data analytics project focused on analyzing retail sales, inventory levels, demand forecasts, and store performance using Python, MySQL, and Tableau.

## 📌 Project Overview

Retail businesses need to maintain the right balance between product availability and inventory levels. This project analyzes historical retail inventory and sales data to identify sales patterns, compare actual sales with demand forecasts, and evaluate inventory coverage across products, categories, regions, and stores.

The project follows an end-to-end analytics workflow:

**Data Cleaning → Exploratory Data Analysis → SQL Analysis → Tableau Visualization**

---

## 🎯 Objectives

- Analyze overall retail sales performance.
- Identify sales patterns across categories and regions.
- Compare actual units sold with demand forecasts.
- Analyze inventory coverage across product categories.
- Compare store-level sales performance.
- Identify gaps between forecasted demand and actual sales.
- Build interactive dashboards for business-oriented analysis.

---

## 🛠️ Tools & Technologies

- **Python**
  - Pandas
  - Matplotlib
- **MySQL**
  - Data validation
  - Aggregation
  - Analytical SQL queries
- **Tableau**
  - Interactive dashboards
  - KPI visualization
  - Sales and inventory analysis
- **Jupyter Notebook**
  - Data cleaning and exploratory analysis
- **GitHub**
  - Project documentation and version control

---

## 📊 Dataset

The dataset contains retail inventory and sales information across multiple stores, products, categories, and regions.

### Dataset Summary

- **Records:** 73,100
- **Stores:** 5
- **Products:** 20
- **Categories:** 5
- **Regions:** 4
- **Date Range:** January 2022 – January 2024

### Key Columns

| Column | Description |
|---|---|
| Date | Date of the sales/inventory record |
| Store ID | Store identifier |
| Product ID | Product identifier |
| Category | Product category |
| Region | Store region |
| Inventory Level | Available inventory |
| Units Sold | Number of units sold |
| Units Ordered | Number of units ordered |
| Demand Forecast | Forecasted customer demand |
| Price | Product price |
| Discount | Applied discount |
| Weather Condition | Weather condition |
| Holiday/Promotion | Holiday or promotion indicator |
| Competitor Pricing | Competitor price |
| Seasonality | Seasonal classification |

---

## 🧹 Data Cleaning

The dataset was inspected and cleaned using Python and Pandas.

### Data quality checks performed

- Checked for missing values.
- Checked for duplicate records.
- Converted the `Date` column to a proper datetime format.
- Validated numerical fields.
- Identified invalid negative values in the `Demand Forecast` column.
- Replaced negative demand forecast values with `0`.

A total of **673 negative demand forecast records** were identified and corrected.

After cleaning:

- **Missing values:** 0
- **Duplicate rows:** 0
- **Negative demand forecast values:** 0

The cleaned dataset was exported as:

`Retail_Inventory_Cleaned.csv`

---

## 🐍 Python Analysis

Python and Pandas were used for exploratory data analysis and business-focused calculations.

The analysis included:

- Sales by category
- Sales by region
- Product-level sales performance
- Store-level sales performance
- Monthly sales trends
- Actual sales vs demand forecast
- Inventory coverage analysis
- Order-to-sales analysis

### Overall Sales & Forecast

- **Total Units Sold:** 9,975,582
- **Total Demand Forecast:** 10,345,749.92
- **Forecast Gap:** 370,167.92
- **Forecast Gap %:** 3.58%

The aggregate demand forecast was higher than actual units sold by approximately **3.58%**.

---

## 🗄️ MySQL Analysis

The cleaned dataset was imported into MySQL for structured business analysis.

SQL analysis was used for:

- Data validation
- Record count verification
- Category-level sales analysis
- Region-level sales analysis
- Store performance analysis
- Actual sales vs demand forecast
- Product-level analysis
- Aggregation and business metrics

The SQL queries are available in:

`retail_inventory_analysis.sql`

---

## 📈 Tableau Dashboards

Two Tableau dashboards were created to present the analysis in an interactive and business-friendly format.

### Dashboard 1 — Main Sales & Performance Dashboard

The dashboard includes:

- Total Demand Forecast
- Total Units Sold
- Forecast Gap
- Forecast Gap %
- Monthly Sales Trend
- Sales by Category
- Sales by Region
- Actual Sales vs Demand Forecast
- Interactive filters for Category, Region, and Store ID
  ![Main Sales & Performance Dashboard](Main%20Sales%20%26%20Performance%20Dashboard.png)

---

### Dashboard 2 — Inventory & Store Analysis

This dashboard focuses on inventory coverage and store-level performance.

It includes:

- Inventory Coverage by Category
- Store Sales Performance
- Category filter
  ![Inventory & Store Analysis Dashboard](Inventory%20%26%20Store%20Analysis%20Dashboard.png)

---

## 🔍 Key Insights

### Sales Performance

- Furniture recorded the highest total units sold among the categories.
- Electronics recorded the lowest total units sold among the categories.
- Sales volumes across the five categories were relatively close.

### Regional Performance

- The East region recorded the highest total units sold.
- Sales were relatively balanced across the four regions.

### Store Performance

- Store S003 recorded the highest total units sold.
- Differences between store-level sales were relatively moderate.

### Demand Forecast

- Total demand forecast exceeded actual units sold by approximately **3.58%**.
- Demand forecast was higher than actual sales across all five categories.

### Inventory Coverage

- Inventory coverage was approximately **2 days** across categories.
- Inventory coverage was relatively consistent across stores and categories.

## Project Structure

```text
Retail-Inventory-Analytics/
│
├── README.md
├── Retail_Inventory_Analysis.ipynb
├── retail_inventory_analysis.sql
├── Retail_Inventory_Cleaned.csv
├── retail_inventory_analytics.twbx
├── Main Sales & Performance Dashboard.png
└── Inventory & Store Analysis Dashboard.png

## Project Workflow

1. Collected the retail inventory forecasting dataset from Kaggle.
2. Loaded and explored the dataset using Python and Pandas.
3. Cleaned the data and handled negative demand forecast values.
4. Performed exploratory data analysis using Pandas and Matplotlib.
5. Imported the cleaned dataset into MySQL.
6. Performed SQL-based aggregation and analysis.
7. Created interactive Tableau dashboards to visualize sales, demand forecasts, inventory coverage, category performance, regional performance, and store performance.

## Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- Python
- Pandas
- Matplotlib
- SQL
- MySQL
- Tableau
- Data Visualization
- KPI Analysis
- Inventory Analysis
- Sales Analysis
- GitHub

## Conclusion

This project demonstrates an end-to-end data analytics workflow, from data cleaning and exploratory analysis to SQL-based analysis and interactive dashboard creation. The analysis provides insights into retail sales performance, demand forecasting, inventory coverage, category performance, regional performance, and store-level performance.

## Author

**Lakshmi Prasanna B**

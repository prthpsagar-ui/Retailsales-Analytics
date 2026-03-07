# Retail Sales Analysis Project | SQL + Python + Power BI

## Project Overview

This project analyzes retail sales data across multiple cities in India to understand business performance, product demand, customer purchasing behavior, and revenue trends.

The objective of this project is to transform raw retail sales data into meaningful business insights using **SQL for data cleaning and analysis**, **Python for data processing and exploratory analysis**, and **Power BI for interactive visualization and reporting**.

This project demonstrates a complete **end-to-end data analytics workflow**, including **data preparation, transformation, KPI calculation, trend analysis, and dashboard development**.

---

# Problem Statement

The business wants to analyze retail sales data to answer key business questions:

- What is the total revenue generated?
- How many orders were placed?
- Which product categories generate the most revenue?
- Which cities contribute the highest sales?
- What are the monthly and seasonal sales trends?
- Which products are top-selling and underperforming?
- Which payment methods are most used by customers?

The goal is to convert raw sales data into **actionable insights that help businesses improve decision-making and profitability**.

---

# KPI Requirements

The following **Key Performance Indicators (KPIs)** were calculated during the analysis:

**Total Revenue** → Total sales generated after discount  

**Total Orders** → Number of orders placed  

**Average Order Value (AOV)** → Total Revenue ÷ Total Orders  

**Total Quantity Sold** → Total products sold  

**Average Discount** → Average discount percentage applied on orders  

These KPIs help evaluate the **overall business performance and customer purchasing patterns**.

---

# Chart Requirements Implemented

## Sales Trend Analysis

- Monthly sales trend (Line Chart)
- Daily sales trend (Bar Chart)

These charts help identify **seasonal sales patterns and business growth trends**.

---

## Sales Distribution Analysis

- Sales by product category (Bar Chart)
- Sales by payment method (Pie Chart)
- Sales by city (Map Visualization)

These visualizations help understand **customer purchasing preferences and regional sales distribution**.

---

## Product Performance Analysis

- Top 10 products by revenue (Bar Chart)
- Bottom 10 products by revenue (Bar Chart)
- Total sales by category (Column Chart)

This analysis helps businesses identify **best-performing and underperforming products**.

---

# Dataset Description

The dataset contains retail transaction records including:

- Order ID
- Order Date
- City and State
- Product Category
- Product Name
- Quantity Purchased
- Unit Price
- Discount Percentage
- Payment Method
- Customer Age

The dataset initially contained **duplicates, missing values, and inconsistent records**, which were cleaned and transformed before analysis.

---

# Project Procedure

## Step 1: Data Preparation (Excel)

- Imported raw retail dataset
- Inspected dataset structure
- Identified missing values, duplicates, and inconsistencies
- Prepared the dataset for SQL processing

---

## Step 2: Data Cleaning & Analysis (SQL)

The dataset was imported into **SQL Server (SSMS)** for data cleaning and transformation.

The following operations were performed:

### Data Cleaning

- Removed duplicate records
- Handled missing values
- Corrected inconsistent city names
- Created calculated columns for total sales

### Data Analysis

Using SQL queries, the following analyses were performed:

- Total revenue calculation
- Total order count
- Category-wise sales analysis
- City-wise sales analysis
- Product performance analysis
- Average order value calculation
- Filtering using WHERE and HAVING clauses
- Aggregation using SUM, COUNT, AVG

---

## Step 3: Data Analysis using Python

After SQL cleaning, the dataset was exported for further analysis using **Python**.

### Libraries used

- **Pandas** → Data manipulation
- **NumPy** → Numerical operations
- **Matplotlib** → Data visualization

### Python analysis included

- Data validation
- Exploratory Data Analysis (EDA)
- Monthly sales trend analysis
- Category performance analysis
- City-wise sales comparison
- Visualization of revenue patterns

---

## Step 4: Power BI Dashboard Creation

The cleaned dataset was imported into **Power BI** to create an interactive business dashboard.

### Steps performed

1. Imported dataset into Power BI
2. Created calculated measures using **DAX**
3. Built interactive visualizations
4. Designed a business-friendly dashboard layout

### Dashboard visuals include

- KPI Cards (Revenue, Orders, AOV)
- Sales by Category
- Monthly Sales Trend
- City-wise Sales Map
- Payment Mode Distribution
- Top Performing Products

---

# Business Value Created

This analysis helps retail businesses:

- Identify top-performing product categories
- Understand regional sales distribution
- Track sales growth over time
- Analyze customer purchasing behavior
- Improve product inventory planning
- Optimize pricing and discount strategies

---

# Key Insights Generated

- Electronics category generated the highest revenue.
- Bangalore contributed the largest share of total sales.
- UPI emerged as the most commonly used payment method.
- Sales showed higher activity during festive months.
- A small number of products contributed to a large portion of total revenue.

These insights can help businesses **improve marketing strategies and optimize operations**.

---

# Tools & Technologies Used

**SQL Server (SSMS)** → Data cleaning and business query analysis  

**Python (Pandas, NumPy, Matplotlib)** → Data processing and exploratory analysis  

**Power BI** → Interactive dashboard and visualization  

**Excel** → Raw data storage and initial inspection

---

# Dashboard

Power BI dashboard screenshots are included in this repository.

The dashboard provides an interactive view of:

- Sales performance
- Product category insights
- Regional sales distribution
- Customer payment behavior
- Monthly revenue trends

---

# Conclusion

This project demonstrates how **SQL, Python, and Power BI can be combined to build a complete data analytics solution**.

It showcases practical skills including:

- Data cleaning and transformation
- Business KPI calculation
- Exploratory data analysis
- Dashboard development
- Business insight generation

The project highlights how raw data can be converted into **meaningful insights that support strategic business decisions**.

---

# Outcomes

Through this project, I gained experience in:

- Writing real-world SQL queries
- Performing data cleaning and transformation
- Conducting exploratory data analysis using Python
- Designing professional Power BI dashboards
- Communicating data insights effectively

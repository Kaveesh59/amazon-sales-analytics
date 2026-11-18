# Amazon Sales Data Analytics

An end-to-end data analytics project using **Microsoft Excel, MySQL and Power BI** to analyse Amazon sales data and identify business performance trends.

## Project Overview

This project analyses approximately 129K Amazon sales records to understand sales performance, product category trends, order status distribution and fulfilment patterns.

The project covers data cleaning, SQL-based analysis, KPI development and interactive dashboard creation.

## Tools & Technologies

- **Microsoft Excel:** Data cleaning and preparation
- **MySQL:** Data storage, querying and analysis
- **Power BI:** Data visualisation and interactive dashboard development

## Key Performance Indicators

| Metric | Result |
|---|---:|
| Total Records | 128,943 |
| Unique Orders | 120,352 |
| Total Sales | ₹78,572,537.94 |
| Total Quantity | 116,648 |
| Average Order Value | ₹652.86 |

## Dashboard Features

- Overall sales performance KPIs
- Monthly sales trend
- Sales by product category
- Order status distribution
- Top 10 cities by sales
- Fulfilment distribution
- Interactive filters for category, order status and order date

## Data Analysis Process

1. **Data Cleaning:** Prepared the dataset in Excel and reviewed missing and inconsistent values.
2. **Database Management:** Imported the cleaned CSV dataset into MySQL.
3. **SQL Analysis:** Used aggregation, filtering, grouping, date functions and data type conversions to analyse sales performance.
4. **Dashboard Development:** Created KPI measures, charts and interactive slicers in Power BI.
5. **Validation:** Compared Power BI KPI results against MySQL query results.

## Repository Structure

```text
amazon-sales-analytics/
│
├── Dashboard/
│   └── Amazon_Sales_Dashboard.pbix
│
├── SQL/
│   └── Amazon_Sales_Analysis.sql
│
├── Dataset/
│   └── Amazon_data_cleaned.csv
│
├── Screenshots/
│   └── Dashboard_Final.png
│
└── README.md
```

## Key Findings

- The Set category generated the highest sales among the product categories analysed.
- Amazon fulfilment accounted for approximately 69.54% of records.
- Shipped orders represented approximately 60.31% of records.
- Bengaluru was the leading city by sales in the dashboard analysis.

## Project Objective

The objective was to apply practical data analytics skills to a real-world-style sales dataset, transform raw data into meaningful information and communicate business performance through an interactive dashboard.

## Author

Data Analytics Portfolio Project

**Skills demonstrated:** Excel, SQL, MySQL, Power BI, Data Cleaning, Data Analysis and Data Visualisation.

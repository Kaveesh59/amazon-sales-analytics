# Amazon Sales Data Analytics

An end-to-end data analytics project using **Microsoft Excel, MySQL and Power BI** to analyse Amazon sales data and identify sales trends, order patterns and business performance indicators.

## Project Overview

This project analyses **128,943 cleaned sales records** from an Amazon sales dataset. The workflow covers data cleaning and preparation in Excel, data storage and querying in MySQL, and interactive business reporting in Power BI.

The Power BI report contains two pages:
- **Sales Overview:** overall sales, order volume, product categories, order status, city-level sales and fulfilment.
- **Business Performance:** cancellation rate, B2B order share, promotion usage, fulfilment/status breakdowns and average amount by category.

## Tools & Technologies

- **Microsoft Excel:** Data cleaning, preparation and quality review
- **MySQL:** Data storage, SQL querying, analysis and creation of an analysis view
- **Power BI:** Data modelling, DAX measures, calculated columns and interactive dashboard development

## Dataset Summary

| Item | Value |
|---|---:|
| Cleaned records | 128,943 |
| Distinct orders | 120,352 |
| Columns | 22 |

## Key Performance Indicators

| Metric | Result |
|---|---:|
| Total Sales (sum of valid amount values) | ₹78,572,537.94 |
| Unique Orders | 120,352 |
| Average Order Value | ₹652.86 |
| Total Quantity | 116,648 |
| Total Records | 128,943 |
| Cancellation Rate | 14.29% |
| B2B Order Share | 0.66% |
| Promotion Usage | 61.89% |

*Orders are counted using distinct order IDs because the dataset contains line-item records. Promotion Usage is calculated as the share of records with a promotion identifier, not unique orders. Total Sales is the sum of valid amount values and should not automatically be interpreted as net realised revenue.*

## Dashboard Features

### Page 1 — Sales Overview

- KPI cards for Total Sales, Total Orders, Average Order Value, Total Quantity and Total Records
- Monthly sales trend
- Sales by product category
- Order status distribution
- Top 10 cities by sales
- Fulfilment distribution
- Interactive slicers for product category, order status and order date

### Page 2 — Business Performance

- Cancellation Rate KPI
- B2B Order Share KPI
- Promotion Usage KPI
- Order status by fulfilment method
- B2B vs B2C order distribution
- Promotion usage distribution
- Average amount by product category

## SQL Analysis

The MySQL workflow uses a cleaned raw table and a reusable view named `amazon_sales_analysis`. The view standardises the order date and converts quantity and amount fields into usable numeric values where valid.

Analysis includes:
- Record counts and data-quality checks
- Order status and product category distributions
- Sales and average amount by category
- Top cities by sales
- Fulfilment analysis
- B2B vs B2C order counts
- Cancellation rate
- Promotion usage
- Quantity analysis

## Data Analysis Workflow

1. **Excel — Data Preparation:** Reviewed and cleaned the source data, checked inconsistent and missing values, and retained a raw-data backup.
2. **MySQL — Data Storage:** Imported the cleaned CSV into the `amazon_sales` database.
3. **MySQL — Data Transformation:** Created the `amazon_sales_analysis` view to parse dates and safely convert valid quantity and amount values.
4. **SQL — Business Analysis:** Used filtering, grouping, aggregation, conditional logic and date functions to answer business questions.
5. **Power BI — Data Modelling:** Connected to the MySQL analysis view and created DAX measures and calculated columns.
6. **Power BI — Reporting:** Built a two-page interactive report with KPI cards, charts and slicers.
7. **Validation:** Cross-checked the Cancellation Rate, B2B Order Share and Promotion Usage KPI values against SQL calculations.

## Key Findings

- The **Set** category generated the highest sales among the product categories analysed.
- Amazon fulfilment accounted for approximately **69.54% of records**.
- Shipped orders represented approximately **60.31% of records**.
- Bengaluru was the leading city by sales in the dashboard analysis.
- The cancellation rate was **14.29%** of distinct orders.
- B2B orders represented **0.66%** of distinct orders.

*These are descriptive findings from this dataset; they do not establish the causes of sales, cancellations or promotion usage.*

## Project Objective

The objective is to demonstrate an end-to-end analytics workflow: preparing data, querying and transforming it with SQL, developing business metrics, validating selected KPIs, and presenting findings through an interactive Power BI report.

## Skills Demonstrated

Excel · Data Cleaning · MySQL · SQL · Data Transformation · DAX · Power BI · KPI Development · Data Visualisation · Dashboard Design

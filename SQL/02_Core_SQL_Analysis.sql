-- AMAZON SALES DATA ANALYTICS PROJECT
-- SQL ANALYSIS AND DATA PREPARATION
-- Database: amazon_sales
-- Source Table: amazon_sales_raw
-- Analysis View: amazon_sales_analysis


-- STEP 1: Select the project database
USE amazon_sales;


-- STEP 2: Verify the total number of records
SELECT COUNT(*) AS total_records
FROM amazon_sales_raw;

-- STEP 3: Verify the analysis view
SELECT COUNT(*) AS total_records
FROM amazon_sales_analysis;


-- STEP 4: Preview the analysis-ready data
SELECT *
FROM amazon_sales_analysis
LIMIT 10;

-- STEP 4.1: Check Missing Values

SELECT
    SUM(order_id IS NULL OR TRIM(order_id) = '') AS missing_order_id,
    SUM(order_date IS NULL OR TRIM(order_date) = '') AS missing_date,
    SUM(category IS NULL OR TRIM(category) = '') AS missing_category,
    SUM(amount IS NULL OR TRIM(amount) = '') AS missing_amount,
    SUM(ship_city IS NULL OR TRIM(ship_city) = '') AS missing_city
FROM amazon_sales_raw;

-- STEP 5: SQL BUSINESS ANALYSIS

-- 5.1 Order Status Distribution
SELECT status, COUNT(*) AS total_records
FROM amazon_sales_analysis
GROUP BY status
ORDER BY total_records DESC;


-- 5.2 Category Distribution
SELECT category, COUNT(*) AS total_records
FROM amazon_sales_analysis
GROUP BY category
ORDER BY total_records DESC;


-- 5.3 Total Valid Sales Amount
SELECT SUM(amount_clean) AS total_sales
FROM amazon_sales_analysis
WHERE amount_clean IS NOT NULL;


-- 5.4 Revenue by Category
SELECT category, ROUND(SUM(amount_clean), 2) AS revenue
FROM amazon_sales_analysis
WHERE amount_clean IS NOT NULL
GROUP BY category
ORDER BY revenue DESC;


-- 5.5 Top 10 Cities
SELECT ship_city, COUNT(*) AS total_records
FROM amazon_sales_analysis
WHERE ship_city IS NOT NULL
AND TRIM(ship_city) <> ''
GROUP BY ship_city
ORDER BY total_records DESC
LIMIT 10;


-- 5.6 Fulfilment Distribution
SELECT fulfilment, COUNT(*) AS total_records
FROM amazon_sales_analysis
GROUP BY fulfilment
ORDER BY total_records DESC;


-- 5.7 Product Size Distribution
SELECT size, COUNT(*) AS total_records
FROM amazon_sales_analysis
GROUP BY size
ORDER BY total_records DESC;


-- 5.8 Quantity by Category
SELECT category, SUM(qty_clean) AS total_quantity
FROM amazon_sales_analysis
WHERE qty_clean IS NOT NULL
GROUP BY category
ORDER BY total_quantity DESC;


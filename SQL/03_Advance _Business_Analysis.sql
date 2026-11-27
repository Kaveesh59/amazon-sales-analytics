/* ADVANCE ANALYSIS */

/* MONTHLY SALES TREND */

SELECT DATE_FORMAT(
	STR_TO_DATE(order_date, '%d-%b-%Y'),'%Y-%m') AS sales_month,
    ROUND(SUM(CAST(amount AS DECIMAL(12,2))), 2) AS revenue
FROM amazon_sales_raw
WHERE amount REGEXP '^[0-9]+(\\.[0-9]+)?$'
GROUP BY sales_month
ORDER BY sales_month;

-- ORDER CANCELLATION PERCENTAGE

SELECT COUNT(DISTINCT order_id) AS total_orders,
     COUNT(DISTINCT CASE
        WHEN LOWER(TRIM(status)) LIKE '%cancel%'
        THEN order_id
    END) AS cancelled_orders,
	ROUND(COUNT(DISTINCT CASE
            WHEN LOWER(TRIM(status)) LIKE '%cancel%'
            THEN order_id
        END) * 100.0 /
        COUNT(DISTINCT order_id), 2
    ) AS cancellation_percentage

FROM amazon_sales_analysis;


-- TOP 5 SELLING CATEGORIES 

SELECT category,
    ROUND(SUM(amount_clean), 2) AS total_sales
FROM amazon_sales_analysis
WHERE amount_clean IS NOT NULL
GROUP BY category
ORDER BY total_sales DESC
LIMIT 5;

-- SALES BY FULFILMENT METHOD 

SELECT fulfilment,
    ROUND(SUM(amount_clean), 2) AS total_sales
FROM amazon_sales_analysis
WHERE amount_clean IS NOT NULL
GROUP BY fulfilment
ORDER BY total_sales DESC;

-- B2B VS B2C ORDER ANALYSIS 

SELECT b2b,
    COUNT(DISTINCT order_id) AS total_orders
FROM amazon_sales_analysis
GROUP BY b2b;

-- PROMOTION USAGE ANALYSIS

SELECT
    CASE
        WHEN promotion_ids IS NOT NULL
         AND TRIM(promotion_ids) <> ''
         AND UPPER(TRIM(promotion_ids)) <> 'NO PROMOTIONS DONE'
        THEN 'With Promotion'
        ELSE 'Without Promotion'
    END AS promotion_status,
    COUNT(*) AS total_records
FROM amazon_sales_analysis
GROUP BY promotion_status;

-- AVERAGE SALES AMOUNT BY CATEGORY 

SELECT category,
    ROUND(AVG(amount_clean), 2) AS average_amount
FROM amazon_sales_analysis
WHERE amount_clean IS NOT NULL
GROUP BY category
ORDER BY average_amount DESC;



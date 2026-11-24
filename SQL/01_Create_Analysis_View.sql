USE amazon_sales;

CREATE OR REPLACE VIEW amazon_sales_analysis AS
SELECT
    order_id,
    STR_TO_DATE(order_date, '%d-%b-%Y') AS order_date_clean,
    status,
    fulfilment,
    sales_channel,
    ship_service_level,
    style,
    sku,
    category,
    size,
    asin,
    courier_status,

    CASE
        WHEN qty REGEXP '^[0-9]+$'
        THEN CAST(qty AS UNSIGNED)
        ELSE NULL
    END AS qty_clean,

    currency,

    CASE
        WHEN amount REGEXP '^[0-9]+(\\.[0-9]+)?$'
        THEN CAST(amount AS DECIMAL(12,2))
        ELSE NULL
    END AS amount_clean,

    ship_city,
    ship_state,
    ship_postal_code,
    ship_country,
    promotion_ids,
    b2b,
    fulfilled_by

FROM amazon_sales_raw;

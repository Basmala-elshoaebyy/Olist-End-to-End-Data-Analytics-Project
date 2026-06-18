
-- Check total rows
SELECT COUNT(*) AS total_rows
FROM master5;

-- Preview dataset
SELECT *
FROM master5
LIMIT 10;

-- Check distinct customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM master5;

-- Check distinct orders
SELECT COUNT(DISTINCT order_id) AS unique_orders
FROM master5;

-- Check distinct products
SELECT COUNT(DISTINCT product_id) AS unique_products
FROM master5;

-- Total Revenue
SELECT
ROUND(SUM(price + freight_value),2) AS total_revenue
FROM master5;

-- Average Order Revenue
SELECT
ROUND(AVG(price + freight_value),2) AS average_order_revenue
FROM master5;

-- Top 10 Categories by Revenue
SELECT
product_category_name_english,
ROUND(SUM(price + freight_value),2) AS revenue
FROM master5
GROUP BY product_category_name_english
ORDER BY revenue DESC
LIMIT 10;

-- Bottom 10 Categories by Revenue
SELECT
product_category_name_english,
ROUND(SUM(price + freight_value),2) AS revenue
FROM master5
GROUP BY product_category_name_english
ORDER BY revenue ASC
LIMIT 10;

-- Revenue by State
SELECT
customer_state,
ROUND(SUM(price + freight_value),2) AS revenue
FROM master5
GROUP BY customer_state
ORDER BY revenue DESC;
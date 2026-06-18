
-- Top States by Number of Orders
SELECT
customer_state,
COUNT(DISTINCT order_id) AS total_orders
FROM master4
GROUP BY customer_state
ORDER BY total_orders DESC;

-- Top Cities by Orders
SELECT
customer_city,
COUNT(DISTINCT order_id) AS total_orders
FROM master4
GROUP BY customer_city
ORDER BY total_orders DESC
LIMIT 20;

-- Average Revenue per Customer
SELECT
ROUND(
SUM(price + freight_value) /
COUNT(DISTINCT customer_unique_id),
2
) AS avg_customer_value
FROM master4;
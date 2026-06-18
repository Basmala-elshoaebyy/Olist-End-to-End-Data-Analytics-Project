
-- 1. Orders + Customers
-- Find customer state for each order

SELECT
o.order_id,
c.customer_state
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
LIMIT 10;



-- 2. Orders by State

SELECT
c.customer_state,
COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;


-- 3. Product Categories Sold

SELECT
p.product_category_name,
COUNT(*) AS items_sold
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY items_sold DESC
LIMIT 10;



-- 4. Revenue by Product Category

SELECT
p.product_category_name,
ROUND(SUM(oi.price + oi.freight_value),2) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;



-- 5. Revenue by Customer State

SELECT
c.customer_state,
ROUND(SUM(oi.price + oi.freight_value),2) AS revenue
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;

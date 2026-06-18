
-- Best Selling Categories
SELECT
product_category_name_english,
COUNT(*) AS items_sold
FROM master5
GROUP BY product_category_name_english
ORDER BY items_sold DESC
LIMIT 10;

-- Most Expensive Products
SELECT
product_id,
ROUND(MAX(price),2) AS highest_price
FROM master5
GROUP BY product_id
ORDER BY highest_price DESC
LIMIT 10;

-- Highest Revenue Categories
SELECT
product_category_name_english,
ROUND(SUM(price + freight_value),2) AS revenue
FROM master5
GROUP BY product_category_name_english
ORDER BY revenue DESC
LIMIT 10;
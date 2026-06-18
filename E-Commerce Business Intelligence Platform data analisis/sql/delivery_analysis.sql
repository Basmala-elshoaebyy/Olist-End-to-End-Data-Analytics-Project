
-- Average Delivery Time
SELECT
ROUND(AVG(delivery_days),2) AS avg_delivery_days
FROM master5;

-- Slowest States
SELECT
customer_state,
ROUND(AVG(delivery_days),2) AS avg_delivery_days
FROM master5
GROUP BY customer_state
ORDER BY avg_delivery_days DESC;

-- Fastest States
SELECT
customer_state,
ROUND(AVG(delivery_days),2) AS avg_delivery_days
FROM master5
GROUP BY customer_state
ORDER BY avg_delivery_days ASC;
CREATE TABLE instacart_analysis (
order0_id INT,
product_id INT,
add_to_cart_order INT,
reordered INT,
product_name TEXT,
aisle_id INT,
department_id INT,
user_id INT,
eval_set VARCHAR(20),
order_number INT,
order_dow INT,
order_hour_of_day INT,
days_since_prior_order FLOAT,
antecedents TEXT,
consequents TEXT,
support FLOAT,
confidence FLOAT,
lift FLOAT,
Recency INT,
Frequency INT,
Monetary INT,
Cluster INT
);
SELECT * FROM instacart_analysis;

---Top Selling Products
SELECT product_name, COUNT(*) AS total_orders
FROM instacart_analysis
GROUP BY product_name
ORDER BY total_orders DESC
LIMIT 10;

---Most Frequent Product Combinations
SELECT a.product_name AS product_1,
       b.product_name AS product_2,
       COUNT(*) AS frequency
FROM instacart_analysis a
JOIN instacart_analysis b
ON a.order_id = b.order_id
AND a.product_id < b.product_id
GROUP BY product_1, product_2
ORDER BY frequency DESC
LIMIT 10;

---Top Customers (High Frequency Buyers)
SELECT user_id,
COUNT(DISTINCT order_id) AS total_orders
FROM instacart_analysis
GROUP BY user_id
ORDER BY total_orders DESC
LIMIT 10;

---Average Basket Size
SELECT AVG(product_count) AS avg_basket_size
FROM (
    SELECT order_id, COUNT(product_id) AS product_count
    FROM instacart_analysis
    GROUP BY order_id
) t;

---Time Slots Peak
SELECT 
    CASE 
        WHEN order_hour_of_day BETWEEN 5 AND 11 THEN 'Morning'
        WHEN order_hour_of_day BETWEEN 12 AND 16 THEN 'Afternoon'
        WHEN order_hour_of_day BETWEEN 17 AND 20 THEN 'Evening'
        ELSE 'Night'
    END AS time_of_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM instacart_analysis
GROUP BY time_of_day
ORDER BY total_orders DESC;

---Peak Shopping Hours (Exact Hours)
SELECT order_hour_of_day,
COUNT(DISTINCT order_id) AS total_orders
FROM instacart_analysis
GROUP BY order_hour_of_day
ORDER BY total_orders DESC
LIMIT 5;

---Orders by Day of Week
SELECT order_dow, COUNT(*) AS total_orders
FROM instacart_analysis
GROUP BY order_dow
ORDER BY total_orders DESC;

---Reorder Rate
SELECT 
SUM(CASE WHEN reordered = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS reorder_rate
FROM instacart_analysis;

---Most Reordered Products
SELECT product_name, COUNT(*) AS reorder_count
FROM instacart_analysis
WHERE reordered = 1
GROUP BY product_name
ORDER BY reorder_count DESC
LIMIT 10;

---RFM Base Table (for Segmentation)
WITH rfm AS (
SELECT user_id,
MAX(order_number) AS recency,
COUNT(DISTINCT order_id) AS frequency,
COUNT(product_id) AS monetary
FROM instacart_analysis
GROUP BY user_id
),
rfm_score AS (
SELECT *,
NTILE(3) OVER(ORDER BY recency DESC) AS r_score,
NTILE(3) OVER(ORDER BY frequency DESC) AS f_score,
NTILE(3) OVER(ORDER BY monetary DESC) AS m_score
FROM rfm
)
SELECT *,
CASE 
WHEN r_score=3 AND f_score=3 AND m_score=3 THEN 'Best Customers 💎'
WHEN f_score=1 AND m_score=1 THEN 'Low Value Customers'
WHEN r_score=3 AND f_score=1 THEN 'New Customers'
ELSE 'Average Customers'
END AS customer_segment
FROM rfm_score;

---Customer Segmentation
SELECT CASE 
WHEN total_orders BETWEEN 4 AND 5 THEN 'High Value'
WHEN total_orders BETWEEN 2 AND 3 THEN 'Medium Value'
ELSE 'Low Value'
END AS customer_segment,COUNT(*) AS customer_count
FROM(
SELECT user_id,COUNT(DISTINCT order_id) AS total_orders
FROM instacart_analysis
GROUP BY user_id
)t
GROUP BY customer_segment;

---Customer Behaviour Check (Frequent, Regular, Inactive Customer)
SELECT user_id,
AVG(days_since_prior_order) AS avg_days,
CASE 
WHEN AVG(days_since_prior_order)<=7 THEN 'Frequent Customer 🔥'
WHEN AVG(days_since_prior_order) BETWEEN 8 AND 20 THEN 'Regular Customer👍'
ELSE 'Inactive Customer ⚠️'
END AS customer_behavior
FROM instacart_analysis
GROUP BY user_id;











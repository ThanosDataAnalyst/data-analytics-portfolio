1️⃣ Revenue by category

SELECT
    category,
    SUM(amount) AS total_revenue
FROM transactions
GROUP BY category
ORDER BY total_revenue DESC;

2️⃣ High-value vs total revenue
-- Total vs high-value revenue
SELECT
    SUM(amount) AS total_revenue,
    SUM(CASE WHEN amount >= 200 THEN amount ELSE 0 END) AS high_value_revenue
FROM transactions;


3️⃣ Categories above revenue threshold
-- Categories with strong performance
SELECT
    category,
    SUM(amount) AS revenue
FROM transactions
GROUP BY category
HAVING SUM(amount) >= 200
ORDER BY revenue DESC;

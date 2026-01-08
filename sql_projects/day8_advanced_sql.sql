SELECT category,
       COUNT(*) AS transactions,
       SUM(amount) AS total_revenue
FROM transactions
GROUP BY category
HAVING SUM(amount) > 100;

"Only show categories that actually generate meaningful revenue."

SELECT
  category,
  CASE
    WHEN amount >= 200 THEN 'High Value'
    WHEN amount BETWEEN 100 AND 199 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS transaction_type
FROM transactions;

"Identify each category for value by letting the amount determine the transaction type"

Identifies top-performing categories based on total revenue :

SELECT
    category,
    SUM(amount) AS total_revenue
FROM transactions
GROUP BY category
HAVING SUM(amount) >= 200
ORDER BY total_revenue DESC;

> Or for top 3 or top 5 List :

SELECT
    category,
    SUM(amount) AS total_revenue
FROM transactions
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 3;


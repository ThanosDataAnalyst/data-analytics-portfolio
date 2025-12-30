-- Day 3: Aggregations and GROUP BY

-- Count items per category
SELECT category, COUNT(*) AS total
FROM table_name
GROUP BY category;

-- Average value per group
SELECT year, AVG(value) AS avg_value
FROM table_name
GROUP BY year;

-- Sum per group
SELECT year, SUM(value) AS total_value
FROM table_name
GROUP BY year
ORDER BY total_value DESC;

-- Years with more than 5 movies
SELECT year, COUNT(*) AS movie_count
FROM movies
GROUP BY year
HAVING COUNT(*) > 5
ORDER BY movie_count DESC;

SELECT
  DATE(block_time) AS day,
  COUNT(*) AS tx_count
FROM ethereum.transactions
GROUP BY DATE(block_time)
ORDER BY day DESC
LIMIT 10;

-- Day 4: SQL JOINs

-- Join movies with box office data
SELECT
  m.title,
  b.revenue
FROM movies m
INNER JOIN boxoffice b
  ON m.id = b.movie_id;

-- Example conceptual join (prices + transactions)
SELECT
  p.day,
  p.price,
  t.tx_count
FROM prices p
INNER JOIN transactions t
  ON p.day = t.day;

SELECT title, Rating
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY Rating DESC

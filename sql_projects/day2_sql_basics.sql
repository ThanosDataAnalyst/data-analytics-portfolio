-- Day 2: SQL Basics

SELECT *
FROM movies
LIMIT 5;

SELECT title, year
FROM movies
WHERE year > 2000
ORDER BY year DESC;

SELECT title, box_office
FROM movies
ORDER BY box_office DESC
LIMIT 10;

-- CREATE DATABASE NETFLIX;

-- USE NETFLIX;

-- SELECT release_year, COUNT(*) as count
-- FROM netflix_titles
-- GROUP BY release_year
-- ORDER BY count DESC
-- LIMIT 5;


-- SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) as avg_duration
-- FROM netflix_titles
-- WHERE type = 'Movie';


-- SELECT country, COUNT(*) as count
-- FROM netflix_titles
-- GROUP BY country
-- ORDER BY count DESC
-- LIMIT 5;


-- SELECT title, rating, release_year
-- FROM netflix_titles
-- WHERE type = 'TV Show' -- AND release_year LIKE '%2021%'
-- ORDER BY release_year DESC
-- LIMIT 10;





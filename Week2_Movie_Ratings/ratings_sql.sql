-- Create ratings table
CREATE TABLE ratings (
  user_id INTEGER,
  movie TEXT,
  rating INTEGER
);

-- Load ratings data from CSV (PostgreSQL; commented out for MySQL Workbench)
-- \copy ratings(user_id, movie, rating)
-- FROM 'data/sql_load/ratings.csv'
-- WITH (FORMAT csv, HEADER true);

-- Summary query
SELECT
  movie,
  ROUND(AVG(rating), 2) AS avg_rating,
  COUNT(*) AS rating_count
FROM ratings
GROUP BY movie
ORDER BY avg_rating DESC;


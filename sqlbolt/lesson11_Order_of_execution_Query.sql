-- =================================================
-- SQLBolt Lesson 11: Order of execution of a Query 
-- =================================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes
-- Table: Boxoffice
-- Columns: movie_id, rating, Domestic_sales, international_sales
-- ---------------------------------------------------------------------------------------------------
-- Task 1: Find the number of movies each director has directed 
-- ---------------------------------------------------------------------------------------------------
   SELECT director,count(title) as num_of_movies from employees group by(director);
-- ---------------------------------------------------------------------------------------------------
-- Task 2: Find the total domestic and international sales that can be attributed to each director
-- ---------------------------------------------------------------------------------------------------
   SELECT director, sum(domestic_sales + international_sales) as total_domestic_and_international_sales
   from movies inner join boxoffice on movies.id = boxoffice.movie_id group by(director);

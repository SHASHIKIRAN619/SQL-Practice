-- =================================================
-- SQLBolt Lesson 12: Inserting rows
-- =================================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes
-- Table: Boxoffice
-- Columns: movie_id, rating, Domestic_sales, international_sales
-- -----------------------------------------------------------------------------------------------------
-- Task 1: Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
-- -----------------------------------------------------------------------------------------------------
   Insert into movies values(11,'Toy Story 4','	John Lasseter',2011,105);
-- ----------------------------------------------------------------------------------------------------
-- Task 2: Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, 
   and made 340 million domestically and 270 million internationally. 
   Add the record to the BoxOffice table.
-- ----------------------------------------------------------------------------------------------------
   Insert into boxoffice values(11,8.7,340000000,270000000);

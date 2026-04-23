-- =================================================
-- SQLBolt Lesson 15:  Deleting rows
-- =================================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes

-- -----------------------------------------------------------------------------------------------
-- Task 1: This database is getting too big, lets remove all movies that were released before 2005
-- -----------------------------------------------------------------------------------------------
   Delete from movies where year < 2005;
-- -----------------------------------------------------------------------------------------------
-- Task 2: Andrew Stanton has also left the studio, so please remove all movies directed by him
-- ----------------------------------------------------------------------------------------------
   Delete from movies where director = 'Andrew Stanton';

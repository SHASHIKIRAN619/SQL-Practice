-- =================================================
-- SQLBolt Lesson 4: Filtering and Sorting
-- =================================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes
---- -----------------------------------------------------------------------------
-- Task 1: List all directors of Pixar movies (alphabetically), without duplicates 
-- -------------------------------------------------------------------------------
   SELECT distinct director from movies order by director asc;
-- ------------------------------------------------------------------------------------
-- Task 2: List the last four Pixar movies released (ordered from most recent to least)
-- ------------------------------------------------------------------------------------
   SELECT title, year from movies order by year desc limit 4;
-- ------------------------------------------------------------------------------------
-- Task 3: List the first five Pixar movies sorted alphabetically.
-- ------------------------------------------------------------------------------------
  SELECT title, year from movies order by title asc limit 5;
-- ------------------------------------------------------------------------------------
-- Task 4: List the next five Pixar movies sorted alphabetically
-- ------------------------------------------------------------------------------------
  SELECT title, year from movies order by title asc limit 5 offset 5; 

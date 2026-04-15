-- ============================================
-- SQLBolt Lesson 1: SELECT Queries
-- ============================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes

---- --------------------------------------------
-- Task 1: Find the title of each film
-- --------------------------------------------
  SELECT title from movies;
---- --------------------------------------------
-- Task 2: Find the director of each film 
-- --------------------------------------------
  SELECT director from movies;
---- --------------------------------------------
-- Task 3: Find title and director of each film
-- --------------------------------------------
  SELECT title, director from movies;
---- --------------------------------------------
-- Task 4: Find the title and year of each film
-- --------------------------------------------
  SELECT title, year from movies;
---- --------------------------------------------
-- Task 5: Find all the information about each film 
-- --------------------------------------------
  SELECT * from movies;

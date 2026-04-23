-- =================================================
-- SQLBolt Lesson 14:  Updating rows
-- =================================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes

-- ---------------------------------------------------------------------------------------------------------
-- Task 1: The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
-- --------------------------------------------------------------------------------------------------------
   Update movies set director = 'John Lasseter' where id = 2;
-- --------------------------------------------------------------------------------------------------------
-- Task 2: The year that Toy Story 2 was released is incorrect, it was actually released in 1999
-- --------------------------------------------------------------------------------------------------------
   Update movies set year = 1999 where id = 3;
-- --------------------------------------------------------------------------------------------------------
-- Task 3: Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" 
   and it was directed by Lee Unkrich
-- --------------------------------------------------------------------------------------------------------
   Update movies set title = 'Toy Story 3', director = 'Lee Unkrich' where id = 11;

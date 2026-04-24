-- =================================================
-- SQLBolt Lesson 17:  Altering tables
-- =================================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes

-- -------------------------------------------------------------------------------------------------------------------
-- Task 1: Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in
-- -------------------------------------------------------------------------------------------------------------------
   Alter table movies add column Aspect_ratio float(2);
-- ------------------------------------------------------------------------------------------------------------------
-- Task 2: Add another column named Language with a TEXT data type to store the language that the movie was released in. 
   Ensure that the default for this language is English
-- --------------------------------------------------------------------------------------------------------------------
   Alter table movies add column Language varchar(20) default 'English';
-- --------------------------------------------------------------------------------------------------------------------

-- =================================================
-- SQLBolt Lesson 6: Mutli-table Queries with Joins 
-- =================================================

-- Table: movies
-- Columns: id, title, director, year, length_minutes
-- Table: Boxoffice
-- Columns: movie_id, rating, Domestic_sales, international_sales
-- ---------------------------------------------------------------------------------------------------------------------
--Task 1: Find the domestic and international sales for each movie
-- ---------------------------------------------------------------------------------------------------------------------
 SELECT m.title, d.domestic_sales,d.international_salesfrom movies as m innner join boxoffice as b on m.id = b.movie_id;
-- ---------------------------------------------------------------------------------------------------------------------
-- Task 2: Show the sales numbers for each movie that did better internationally rather than domestically
-- ---------------------------------------------------------------------------------------------------------------------
 SELECT m.title,b.international_sales,b.domestic_sales from movies as m inner join boxoffice as b on m.id = b.movie_id
 where b.international_sales > b.domestic_sales;
-- ---------------------------------------------------------------------------------------------------------------------
-- Task 3: List all the movies by their ratings in descending orde
-- ---------------------------------------------------------------------------------------------------------------------
 SELECT m.title,b.rating from movies as m inner join boxoffice as b on m.id = b.movie_id order by b.rating desc;

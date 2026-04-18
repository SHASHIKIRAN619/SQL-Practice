-- ============================================
-- SQLBolt Simple SELECT Queries
-- ============================================

-- Table: north_american_cities
-- Columns: city, country, population, latitude, longitude
-- -----------------------------------------------------------
-- Task 1: List all the Canadian cities and their populations
-- ---------------------------------------------------------------------------
  SELECT city, population from north_american_cities where country = 'Canada';
-- ---------------------------------------------------------------------------------------
-- Task 2: Order all the cities in the United States by their latitude from north to south
-- ------------------------------------------------------------------------------------------------------
  SELECT city,latitude from north_amercian_cities where country = 'United States' order by latitude desc;
-- -------------------------------------------------------------------------------------------------------
-- Task 3: List all the cities west of Chicago, ordered from west to east 
-- --------------------------------------------------------------------------------------------------------
  SELECT city, longitude FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude ASC;
-- --------------------------------------------------------------------------------------------------------
-- Task 4: List the two largest cities in Mexico (by population)
-- ------------------------------------------------------------------------------------------------------------
  SELECT city, population from north_american_cities where country = 'Mexico' order by population desc limit 2;
-- ------------------------------------------------------------------------------------------------------------
-- Task 5: List the third and fourth largest cities (by population) in the United States and their population
-- ----------------------------------------------------------------------------------------------------------------------------
  SELECT city, population from north_american_cities where country = 'United States' order by population desc limit 2 offset 2;

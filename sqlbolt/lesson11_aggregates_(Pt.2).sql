-- =================================================
-- SQLBolt Lesson 10:  Queries with aggregates (Pt. 2)   
-- =================================================

-- Table:  Employees
-- Columns: role, name,	building,	years_employed
-- --------------------------------------------------------------------------------------------------
-- Task 1: Find the number of Artists in the studio (without a HAVING clause) 
-- -------------------------------------------------------------------------------------------------
   SELECT count(role) as Num_of_Artists from employees where role like 'A%';
-- ------------------------------------------------------------------------------------------------
-- Task 2: Find the number of Employees of each role in the studio
-- -----------------------------------------------------------------------------------------------
   SELECT role, count(*) as num_of employees from employees group by(role);
-- -----------------------------------------------------------------------------------------------
-- Task 3: Find the total number of years employed by all Engineers
-- ----------------------------------------------------------------------------------------------
   SELECT sum(years_employed) as total_num_of_years from employees where role = 'Engineer';

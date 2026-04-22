-- =================================================
-- SQLBolt Lesson 8: Null Values  
-- =================================================

-- Table:  Employees
-- Columns: role, name,	building,	years_employed
-- -----------------------------------------------------------------------------------------------------
-- Task 1: Find the longest time that an employee has been at the studio 
-- ----------------------------------------------------------------------------------------------------
   SELECT name, max(years_employed) as Longest_time from employees;
-- ----------------------------------------------------------------------------------------------------
-- Task 2: For each role, find the average number of years employed by employees in that role
-- ---------------------------------------------------------------------------------------------------
   SELECT role, avg(years_employed) as avg_num_of_yeras from employees group by(role);
-- --------------------------------------------------------------------------------------------------
-- Task 3: Find the total number of employee years worked in each building
-- --------------------------------------------------------------------------------------------------
   SELECT building, sum(years_employed) as total_num_employees from employees group by(building);

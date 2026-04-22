-- =================================================
-- SQLBolt Lesson 8: Null Values  
-- =================================================

-- Table: Buildings
-- Columns: building_name, capacity
-- Table:  Employees
-- Columns: role, name,	building,	years_employed
-- ==========================================================================================
-- Task 1: Find the name and role of all employees who have not been assigned to a building 
-- -----------------------------------------------------------------------------------------
   SELECT name, role from employees where building is null;
-- -----------------------------------------------------------------------------------------
-- Task 2: Find the names of the buildings that hold no employees
-- -----------------------------------------------------------------------------------------
   SELECT DISTINCT building_name FROM buildings LEFT JOIN employees ON building_name = building
   WHERE role IS NULL;

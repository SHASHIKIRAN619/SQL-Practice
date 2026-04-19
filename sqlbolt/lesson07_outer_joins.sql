-- =================================================
-- SQLBolt Lesson 6: Outer Joins 
-- =================================================

-- Table: Buildings
-- Columns: building_name, capacity
-- Table:  Employees
-- Columns: role, name,	building,	years_employed
-- --------------------------------------------------------------------------------------
-- Task 1: Find the list of all buildings that have employees
-- --------------------------------------------------------------------------------------
   SELECT distinct building from employees;
-- --------------------------------------------------------------------------------------
-- Task 2: Find the list of all buildings and their capacity
-- --------------------------------------------------------------------------------------
  SELECT distinct building_name, capacity from buildings;
-- -------------------------------------------------------------------------------------------------------
-- Task 3: List all buildings and the distinct employee roles in each building (including empty buildings)
-- -------------------------------------------------------------------------------------------------------
  SELECT distinct b.building_name,e.role from buildings as b left join employees as e on b.building_name = e.building;

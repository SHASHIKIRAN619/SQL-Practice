-- ============================================
-- Practice-Set Null Handling
-- ============================================

-- Table: Employees
-- ==========================================================================================
-- Task 1: Show employees whose salary is NULL
-- ==========================================================================================
   SELECT * from employees where salary is null;
-- ==========================================================================================
-- Task 2: Show employees whose salary is NOT NULL
-- ==========================================================================================
   SELECT * from employees where salary is not null;
-- ==========================================================================================
-- Task 4: Display name and salary, but if salary is NULL show 'No Salary'
-- =========================================================================================
   SELECT name, salary, coalesce(salary,'No Salary') as salary from employees;

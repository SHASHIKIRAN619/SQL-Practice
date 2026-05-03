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
-- =========================================================================================
-- Task 5: Show employees where department is NULL
-- =========================================================================================
   SELECT * from employees where department is null;
- ==========================================================================================
-- Task 6: Show employees where city is NOT NULL
-- ========================================================================================
   SELECT * from employees where city is not null;
-- ========================================================================================
-- Task 7: Show employees where salary is NULL OR salary < 30000
-- =======================================================================================
   SELECT * from employees where salary is null or salary < 30000;
-- =======================================================================================
-- Task 8: Show employees where salary is NOT NULL AND salary > 50000
-- ======================================================================================
   SELECT * from employees where salary is not null and salary > 50000;
-- ======================================================================================
-- Task 9: Show employees where department is NULL AND salary is NULL
-- ======================================================================================
   SELECT * from employees where department is null and salary is null;
-- =====================================================================================
-- Task 10: Show employees where department is NOT NULL but city is NULL
-- =====================================================================================
   SELECT * from employees where department is not null and city is null;
-- =====================================================================================
-- Task 11: Replace NULL salary with 0
-- =====================================================================================
   SELECT name, COALESCE(salary,0) as salary from employees;
-- =====================================================================================
-- Task 12: Replace NULL salary with 10000
-- ====================================================================================
   SELECT name, COALESCE(salary, 10000) as salary from employees;
-- ====================================================================================
-- Task 13: Replace NULL city with 'Unknown'
-- ====================================================================================
   SELECT name, COALESCE(city, 'Unknown') as city from employees;
-- ====================================================================================
-- Task 14: Replace NULL department with 'Not Assigned'
-- ====================================================================================
   SELECT name, COALESCE(department, 'Not Assigned') as department from employees;
-- ====================================================================================
-- Task 15: Show name and salary, if salary NULL → 'No Salary'
- =====================================================================================
   SELECT name, COALESCE(CAST(salary as char), 'No salary')as salary from employees;
-- ====================================================================================
-- Task 16: Show name, city, department replacing all NULLs with proper labels
-- ====================================================================================
   SELECT name, COALESCE(city,'Unknown') as city, COALESCE(department,'Not Asigned') 
   as department from employees;
-- ===================================================================================


-- ============================================
-- Practice-Set Order By Sql Queries.
-- ============================================
-- ==========================================================================
-- Task 1: Show all employees sorted by salary (ascending)
-- =========================================================================
   SELECT * FROM EMPLOYEES order by salary asc;
-- =========================================================================
-- Task 2: Show all employees sorted by salary (descending)
-- =========================================================================
   SELECT * from employees order by salary desc;
-- =========================================================================
-- Task 3: Show employees sorted by name alphabetically
-- =========================================================================
   SELECT * from employees order by name asc;
-- =========================================================================
-- Task 4: Show employees sorted by city (A → Z)
-- =========================================================================
   SELECT * from employees order by city asc;
-- =========================================================================
-- Task 5: Show employees sorted by department (Z → A)
-- =========================================================================
   SELECT * from employees order by department desc;
-- =========================================================================
-- Task 6: Sort employees by department, then by salary (ascending)
-- =========================================================================
   Select * FROM employees order by department asc, salary asc;
-- =========================================================================
-- Task 7: Sort employees by city, then salary (descending)
-- ========================================================================
   SELECT * from employees order by city asc, salary desc;
-- ========================================================================
-- Task 8: Sort employees by salary (descending), then name (ascending)
-- ========================================================================
   SELECT * from employees order by salary desc, name asc;
-- ========================================================================
-- Task 9: Sort employees by department and within that by highest salary
-- ========================================================================
   SELECT * from employees order by department asc, salary desc;
-- ========================================================================
-- Task 10: Sort employees by city (ascending) and name (descending)
-- ========================================================================
   SELECT *  from employees order by city asc, name desc;
-- ========================================================================
-- Task 11: Show top 3 highest paid employees
-- ========================================================================
   SELECT * from employees order by salary desc limit 3;
-- ========================================================================
-- Task 12: Show lowest 2 salaried employees
-- ========================================================================
   SELECT * from employees order by salary asc limit 2;
-- ========================================================================
-- Task 13: Show top 1 highest salary employee
-- ========================================================================
   SELECT * from employees order by salary desc limit 1;
-- ========================================================================
-- Task 14: Show 2nd highest salary employee (important)
-- ========================================================================
   SELECT * from employees order by salary desc limit 1 offset 1;
-- ========================================================================
-- Task 15: Show 3rd highest salary employee
-- =======================================================================
   SELECT * from employees order by salary desc limit 1 offset 2;
-- =======================================================================
-- Task 16: Show cities sorted by total salary (highest first)
-- =======================================================================
   SELECT city, sum(salary) as total_salary from employees order by total_salary desc;
-- ====================================================================================
-- Task 17: Show departments sorted by average salary (lowest first)
-- ====================================================================================
   SELECT department,avg(salary) as avg_salary from employees order by avg_salary asc;
-- ====================================================================================
-- Task 18: Show top 2 cities by employee count
-- ====================================================================================
   SELECT city FROM EMPLOYEES group by(city) order by count(*) desc limit 2;
-- ====================================================================================
-- Task 19: Show department with highest total salary
-- ===============================================================================================
   SELECT department,sum(salary) as total_salary from employees order by total_salary desc;
-- ===============================================================================================
-- Task 20: Show city with lowest average salary
-- ========================================================================================
   SELECT city, avg(salary) as avg_salary from employees group by(city) order by avg_salary asc limit 1;

-- ==================================================
-- Task1: Count employees in each department
-- =============================================================
   SELECT count(*) as employee_count,department from employees;
-- =============================================================
-- Task2: Find maximum salary in each department
-- ================================================================================
   SELECT max(salary) as max_salary,department from employees group by(department);
-- ================================================================================
-- Task3: Find minimum salary in each city
-- ================================================================================
   SELECT min(salary) as min_salary, city from employees group by(city);
-- ================================================================================
-- Task4: Find average salary of IT department
-- ================================================================================
   SELECT avg(salary) as avg_salary from employees where department = 'IT';
-- ================================================================================
-- Task5: Count employees in each department where salary > 30000
-- =====================================================================================================
   SELECT count(*)as employee_count,department from employees where salary > 30000 group by(department);
-- =====================================================================================================
-- Task6: Show total salary for each city
-- =====================================================================================================
   SELECT sum(salary)as total_salary,city from employees group by(city);
-- =====================================================================================================
-- Task7: Show departments having more than 1 employee
-- =====================================================================================================
   SELECT department, count(*) as employee_count from employees group by(department) having count(*) > 1;
-- =====================================================================================================
-- Task8: Show cities where average salary is greater than 40,000
-- =====================================================================================================
   SELECT city, avg(salary) as avg_salary from employees group by(city) having avg(salary) > 40000;
-- =====================================================================================================
-- Task9: Show departments where max salary is greater than 50,000
-- ============================================================================================================
   SELECT department, max(salary) as max_salary from employees group by(department) having max(salary) > 50000
-- ============================================================================================================
-- Task10: Show cities having total salary greater than 90,000
-- ============================================================================================================
   SELECT city,sum(salary) as total_salary from employees group by(city) having sum(salary) > 90000;
-- ============================================================================================================

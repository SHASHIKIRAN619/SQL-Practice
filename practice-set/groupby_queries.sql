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
-- Task 11: Count number of employees in each city
-- ============================================================================================================
   SELECT count(*) as employee_count,city from employees group by(city);
-- ============================================================================================================
-- Task 12: Find total salary for each department
-- ============================================================================================================
   SELECT sum(salary) as total_salary,department from employees group by(department);
-- ============================================================================================================
-- Task 13: Find average salary in each department
-- ============================================================================================================
   SELECT avg(salary) as avg_salary,department from employees group by(department);
-- ============================================================================================================
-- Task 14: Find maximum salary in each city
-- ============================================================================================================
   SELECT max(salary) as max_salary, city from employees group by(city);
-- ============================================================================================================
-- Task 15: Find minimum salary in each department
-- ============================================================================================================
   SELECT min(salary) as min_salary,department from employees group by(department);
-- ============================================================================================================
-- Task 16: Count employees in each department where salary > 40000
-- ============================================================================================================
  SELECT count(*) as employee_count,department from employees where salary > 40000 group by(department);
-- ============================================================================================================
-- Task 17: Find total salary per city for employees from IT department
-- ============================================================================================================
  SELECT SUM(SALARY),city from employees where department = 'IT' group by(city);
-- ============================================================================================================
-- Task 18: Find average salary of employees from Bangalore grouped by department
-- ============================================================================================================
   SELECT avg(salary) as avg_salary,department from employees where city = 'Bangalore' group by(department);
-- ============================================================================================================
-- Task 19: Count employees in each city where department is HR
-- ============================================================================================================
   SELECT count(*) as employee_count,city from employees where department = 'HR' group by(city);
-- ============================================================================================================
-- Task 20: Find max salary per department where city = 'Bangalore'
-- ============================================================================================================
   SELECT max(salary) as max_salary,department from employees where city = 'Bangalore' group by(department);

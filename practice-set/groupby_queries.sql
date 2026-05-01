-- ============================================
-- Practice-Set GroupBy Sql Queries.
-- ============================================
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
-- ============================================================================================================
-- Task 21: Show departments having more than 2 employees
-- ============================================================================================================
   SELECT department, count(*) as employee_count from employees group by(department) having count(*) > 1;
-- ============================================================================================================
-- Task 22: Show cities where total salary is greater than 1,00,000
-- ============================================================================================================
   SELECT city, sum(salary) as total_salary from employees group by(city) having sum(salary) > 100000;
-- ============================================================================================================
-- Task 23: Show departments where average salary is less than 45,000
-- ============================================================================================================
   SELECT department, avg(salary) as avg_salary from employees group by(department) having avg(salary) < 45000;
-- ============================================================================================================
-- Task 24: Show cities where max salary is greater than 50,000
-- ============================================================================================================
   SELECT city, max(salary) as max_salary from employees group by(city) having max(salary) > 50000;
-- ============================================================================================================
-- Task 25: Show departments having total salary between 60,000 and 120,000
-- ===============================================================================================================================
   SELECT department, sum(salary) as total_salary from employees group by(department) having sum(salary) between 60000 and 120000;
-- ===============================================================================================================================
-- Task 26: Show departments with more than 1 employee
-- ================================================================================================================================
   SELECT department,count(*) as employee_count from employees group by(department) having count(*) > 1;
-- ================================================================================================================================
-- Task 27: Show cities where total salary is greater than 80,000
-- ================================================================================================================================
   SELECT city,sum(salary) as total_dalary from employees group by(city) having sum(salary) > 80000;
-- ================================================================================================================================
-- Task 28: Show departments where average salary is greater than 40,000
-- ================================================================================================================================
   SELECT department,avg(salary) as avg_salary from employee group by(department) having avg(salary) > 40000;
-- ================================================================================================================================
-- Task 29: Show cities where minimum salary is less than 40,000
-- ================================================================================================================================
   SELECT city,min(salary) as min_salary from employees group by(city) having min(salary) < 40000;
-- ================================================================================================================================
-- Task 30: Show departments where maximum salary is at least 50,000
-- ================================================================================================================================
   SELECT department,max(salary) as max_salary from employees group by(department) having max(salary) >=50000;
-- ================================================================================================================================
-- Task 31: Show cities having more than 1 employee and total salary > 90,000
-- ================================================================================================================================
   SELECT city, count(*) as employee_count from employees group by(city) having count(*) > 1 and sum(salary) > 90000;
-- =================================================================================================================================
-- Task 32: Show departments where average salary is between 30,000 and 50,000
-- =================================================================================================================================
   SELECT department,avg(salary) as avg_salary from employees group by(department) having avg(salary) between 30000 and 50000;
-- =================================================================================================================================
-- Task 33: Show cities where max salary is greater than average salary of that city
-- =================================================================================================================================
   SELECT city, max(salary) as max_salary,avg(salary) as avg_salary from employees group by(city) having max(salary) > avg(salary);
-- =================================================================================================================================
-- Task 34: Show departments having total salary less than 100,000
-- =================================================================================================================================
   SELECT department,sum(salary) as total_salary from employees group by(department) having sum(salary) < 100000;
-- =================================================================================================================================
-- Task 35: Show cities where employee count is exactly 2
-- =================================================================================================================================
   SELECT city,count(*) as employee_count from employees group by(city) having count(*) = 2;
-- =================================================================================================================================
-- Task 36: Show departments where difference between max and min salary is greater than 20,000
-- ==================================================================================================================================================
   SELECT department,max(salary) as max_salary,min(salary) as min_salary from employees group by(department) having max(salary) - min(salary) > 20000
-- ===================================================================================================================================================
-- Task 37: Show cities where average salary is NOT between 30,000 and 50,000
-- ==================================================================================================================================
   SELECT city, avg(salary) as avg_salary from employees group by(city) having avg(salary) not between 30000 and 50000;
-- =================================================================================================================================
-- Task 38: Show departments where total salary is divisible by 2 (even number)
-- =================================================================================================================================
   SELECT department, sum(salary) as total_salary from employees group by(department) having sum(salary)/2=0;
-- =================================================================================================================================
-- Task 39: Show cities where sum of salary is greater than twice the average salary
-- =================================================================================================================================
   SELECT city, sum(salary) as total_salary from employees group by(city) having sum(salary) > 2 * avg(salary);
-- =================================================================================================================================
-- Task 40: Show departments having more than 1 employee AND avg salary > 40,000
-- =================================================================================================================================
   SELECT department,count(*) as employee_count from employees group by(department) having count(*) > 1 and avg(salary) > 40000;
-- =================================================================================================================================
-- Task 41: Show total number of employees
-- =================================================================================================================================
   SELECT count(*) as total_num_employees from employees;
-- =================================================================================================================================
-- Task 42: Show average salary
-- =================================================================================================================================
   SELECT avg(salary) as avg_salary from employees;
-- =================================================================================================================================
-- Task 43: Show highest salary
-- =================================================================================================================================
   SELECT max(salary) as max_salary from employees;
-- =================================================================================================================================
-- Task 44: Show lowest salary
-- =================================================================================================================================
   SELECT min(salary) as min_salary from employees;
-- =================================================================================================================================
-- Task 45: Count number of employees in each department
-- =================================================================================================================================
   SELECT count(*) as num_of_employees, department from employees group by department;
-- =================================================================================================================================
-- Task 46: Show average salary per department
-- =================================================================================================================================
   SELECT avg(salary) as avg_salary, department from employees group by department;
-- =================================================================================================================================
-- Task 47: Show total salary per city
-- =================================================================================================================================
   SELECT sum(salary) as total_saalry, city from employees group by city;
-- =================================================================================================================================
-- Task 48: Show departments where average salary > 40,000
-- =================================================================================================================================
   SELECT department, avg(salary) as avg_salary from employees group by department having avg(salary) > 40000;
-- =================================================================================================================================
-- Task 49: Find the department that has the second lowest average salary.
-- =================================================================================================================================
   SELECT department, avg(salary) as avg_salary from employees group by department order by avg_salary asc limit 1 offset 1;
-- =================================================================================================================================
-- Task 50: Find cities where the minimum salary is greater than 30,000.
-- =================================================================================================================================
   SELECT city, min(salary) as min_salary from employees group by city having salary > 30000;
-- =================================================================================================================================
-- Task 51: Find departments where the maximum salary is less than 80,000
-- =================================================================================================================================
   SELECT department, max(salary) as max_salary from employees group by department having max(salary) < 80000;
-- =================================================================================================================================
-- Task 52: Find cities where the minimum salary is greater than 30,000.
-- ================================================================================================================================
   SELECT city, min(salary) as min_salary from employees group by city having min(salary) > 30000;
-- ================================================================================================================================
-- Task 53: Find cities where the difference between max and min salary is greater than 25,000.
-- ================================================================================================================================
   SELECT city,max(salary) as max_salary, min(salary) as min_salary from employees 
   group by city having max(salary) - min(salary) > 25000;
-- =================================================================================================================================
-- Task 54: Find departments where the total salary is greater than 200,000.
-- =================================================================================================================================
   SELECT department, sum(salary) as total_salary from employees group by department having sum(salary) > 200000;
-- =================================================================================================================================
-- Task 55: Find cities where the average salary is less than 45,000.
- ==================================================================================================================================
   SELECT city, avg(salary) as avg_salary from employees group by city having avg(salary) < 45000;
-- =================================================================================================================================
-- Task 56: Find departments where the employee count is an even number.
-- =================================================================================================================================
   SELECT department, count(*) as employee_count from employees group by department having mod(count(*),2) = 0;

-- ============================================
-- Practice-Set SQL Queries.
-- ============================================

-- Table: Employees,departments,projects
--Employees:- emp_id, name, age, salary, city, department_id;
--departments:- department_id, department_name;
--Projects:- project_id, project_name, emp_id;

-- ====================================================================================
-- Task 1: Display all columns from the employees table.
-- ====================================================================================
   SELECT * from employees;
-- ====================================================================================
-- Task 2: Display only name and salary of all employees.
-- ====================================================================================
   SELECT name, salary from employees;
-- ====================================================================================
-- Task 3: Display name, age, and city of employees.
-- ====================================================================================
   SELECT name, age,city from employees;
-- ====================================================================================
-- Task 4: Display all records from the departments table.
-- ====================================================================================
   SELECT * from departments;
-- ====================================================================================
-- Task 5: Display only project_name from the projects table.
-- ====================================================================================
   SELECT PROJECT_NAME FROM PROJECTS;
-- =======================================================================================
-- Task 6: Display name and salary, but rename them as employee_name and employee_salary.
-- =======================================================================================
   SELECT name as employee_name, salary as employee_salary from employees;
-- =======================================================================================
-- Task 7: Display all employees along with a new column showing salary + 10000.
-- =======================================================================================
   SELECT emp_id,name,age,salary,city,(salary + 10000) as salary_plus_amount from employees;
-- =========================================================================================
-- Task 8: Display name and age, but rename age as employee_age.
-- ==========================================================================================
   SELECT name, age as employee_age from employees;
-- ===========================================================================================
-- Task 9: Display all unique cities from the employees table.
-- ===========================================================================================
   SELECT distinct city from employees;
-- ===========================================================================================
-- Task 10: Display unique salaries from the employees table.
-- ===========================================================================================
    SELECT distinct salary from employees;
-- ===========================================================================================
-- Task 11: Display unique department IDs from the employees table.
-- ============================================================================================
   SELECT distinct department_id from employees;
-- ============================================================================================
-- Task 12: Display unique combinations of city and salary.
-- ============================================================================================
   SELECT distinct city, salary from employees;
-- ============================================================================================
-- Task 13: Display unique combinations of department_id and city.
-- ============================================================================================
   SELECT distinct department_id, city from employees;
-- ============================================================================================
-- Task 14: Display unique employee ages.
-- ============================================================================================
   SELECT distinct age from employees;
-- ============================================================================================
-- Task 15: Display unique project names from the projects table.
-- ============================================================================================
   SELECT distinct project_name from projects;
-- ============================================================================================
-- Task 16: Display unique cities where employees exist (no duplicates).
-- ============================================================================================
   SELECT DISTINCT city FROM employees WHERE emp_id IS NOT NULL;
-- ============================================================================================
-- Task 17: Display all salaries without duplicates and rename column as unique_salary.
-- ============================================================================================
   SELECT DISTINCT salary AS unique_salary FROM employees;
-- ============================================================================================
-- Task 18: Display unique combinations of emp_id and project_name from projects.
-- ============================================================================================
   SELECT DISTINCT emp_id, project_name FROM projects;
-- ============================================================================================
-- Task 19: Display unique names from employees (even if duplicates exist in future).
-- ============================================================================================
   SELECT DISTINCT name FROM employees;
-- ============================================================================================
-- Task 20: Display unique department IDs but rename column as dept_id.
-- ============================================================================================
   SELECT DISTINCT department_id AS dept_id FROM employees;
-- ============================================================================================
-- Task 21: Count total number of employees in each city.
-- ============================================================================================
   SELECT count(emp_id) as total_num_of_employees, city from employees group by city;;
-- ============================================================================================
-- Task 22: Find total salary paid in each city.
-- ============================================================================================
   SELECT city, sum(salary) as total_salary from employees group by city;
-- ============================================================================================
-- Task 23: Find average salary in each department.
-- ============================================================================================
   SELECT department_id, avg(salary) as avg_salary from employees group by department_id;
-- ============================================================================================
-- Task 24: Find maximum salary in each department.
-- ============================================================================================
   SELECT department_id, max(salary) as max_salary from employees group by department_id;
-- ============================================================================================
-- Task 25: Find minimum salary in each city.
-- ============================================================================================
   SELECT city,min(salary) as min_salary from employees group by city;
-- ============================================================================================
-- Task 26: Count number of employees in each department.
-- ==============================================================================================
   SELECT department_id, count(emp_id) as num_of_employees from employees group by department_id;
-- ==============================================================================================
-- Task 27: Count employees in each city where salary is not NULL.
-- ====================================================================================================
   SELECT city, count(emp_id) as employees_count from employees where salary is not null group by city;
-- ====================================================================================================
-- Task 28: Find total salary for each department.
-- ====================================================================================================
   SELECT department_id,sum(salary) as total_salary from employees group by department_id;
-- ====================================================================================================
-- Task 29: Find average age of employees in each city.
-- ====================================================================================================
   SELECT city, avg(age) as avg_age from employees group by city;
-- ====================================================================================================
-- Task 30: Count how many employees have the same salary
-- ====================================================================================================
   SELECT salary, count(emp_id) as employee_count from employees group by salary;
-- ====================================================================================================
-- Task 31: Display city and total salary, but rename total as total_salary.
-- ====================================================================================================
   SELECT city, sum(salary) as total_salary from employees group by city;
-- ====================================================================================================
-- Task 32: Display department_id and average salary as avg_salary.
-- ====================================================================================================
   SELECT department_id, avg(salary) as avg_salary from employees group by department_id;
-- ====================================================================================================
-- Task 33: Find number of employees in each (city, department_id) combination.
-- ==========================================================================================================
   SELECT city, department_id, count(emp_id) as number_of_employees from employees group by city, department_id;
-- ==============================================================================================================
-- Task 34: Find maximum salary in each city.
-- ==============================================================================================================
   SELECT city, max(salary) as max_salary from employees group by city;
-- ==============================================================================================================
-- Task 35: Find minimum age in each department.
-- ==============================================================================================================
   SELECT department_id, min(age) as min_age from employees group by department_id;
-- ==============================================================================================================
-- Task 36: Display employee names along with their department names.
-- ==============================================================================================================
   SELECT e.name, d.department_name from employees
   e inner join departments d 
   on e.department_id = d.department_id;
-- ==============================================================================================================
-- Task 37: Display all employee names and their project names.
-- ==============================================================================================================
   SELECT e.name, p.project_name from employees e
   inner join projects p 
   on e.emp_id = p.emp_id;
-- =============================================================================================================
-- Task 38: Display employee name, city, and department name.
-- ============================================================================================================
   SELECT e.name, e.city, d.department_name from employees e
   inner join departments d 
   on e.department_id = d.department_id;
-- ============================================================================================================
-- Task 39: Display project name and employee salary.
-- ============================================================================================================
   SELECT p.project_name, e.salary as employee_salary from projects p
   inner join employees e 
   on p.emp_id = e.emp_id;
 -- ===========================================================================================================  
-- Task 40: Display all employees who belong to the HR department.
-- ========================================================================================================
   SELECT e.emp_id, e.name, d.department_name from employees e
   inner join departments d 
   on e.department_id = d.department_id
   where d.department_name = 'HR';
-- ===========================================================================================================
-- Task 41: Display employee name, department name, and project name.
-- ==========================================================================================================
   SELECT e.name,d.department_name,p.project_name
   from employees e
  inner join departments d
  on e.department_id = d.department_id
  inner join projects p
  on e.emp_id = p.emp_id;
-- =========================================================================================================
-- Task 42: Display project name along with employee city.
-- ========================================================================================================
   SELECT p.project_name, e.city 
   from projects p
   inner join employees e
   on p.emp_id = e.emp_id;
-- ========================================================================================================
-- Task 43: Display employee name and department name where salary is greater than 50000.
-- ========================================================================================================
   SELECT e.name, d.department_name 
   from employees e
   inner join departments d
   on e.department_id = d.department_id 
   where salary > 50000;
-- ========================================================================================================
-- Task 44: Display employee name and project name for employees from Bangalore.
-- =======================================================================================================
   SELECT e.name, p.project_name, e.city 
   from employees e
  inner join projects p
  on e.emp_id = p.emp_id
  where e.city = 'Bangalore';
-- =======================================================================================================
-- Task 45: Display all employees working on projects.
-- =======================================================================================================
  SELECT e.name, p.project_name
  from employees e
  inner join projects p
  on e.emp_id = p.emp_id;
-- =========================================================================================================
-- Task 46: Display all employees and their department names, including employees without departments.
-- =========================================================================================================
   SELECT e.name,d.department_name
   FROM employees e
   LEFT JOIN departments d
   on e.department_id = d.department_id;
-- =========================================================================================================
-- Task 47: Display all employees and their project names, including employees without projects.
-- ========================================================================================================
   SELECT e.name, p.project_name
  FROM employees e
  LEFT JOIN projects p
  ON e.emp_id = p.emp_id;
-- ========================================================================================================
-- Task 48: Display all departments and employees in them, including departments with no employees.
-- ========================================================================================================
   SELECT d.department_id, e.name 
   FROM departments d
   LEFT JOIN employees e
   ON d.department_id = e.department_id;
-- ========================================================================================================
-- Task 49: Display all projects and employee names, including projects without employees.
-- ========================================================================================================
   SELECT p.project_name, e.name
   FROM projects p
   LEFT JOIN employees e
   ON p.emp_id = e.emp_id;
-- ==============================================================================================================================
-- Task 50: Display employee name and department name, even if department is NULL.
-- ===============================================================================================================================
   SELECT e.name, d.department_name
   FROM employees e
   LEFT JOIN departments d
   ON e.department_id = d.department_id;
-- ====================================================================================================================================
-- Task 51: Display cities having more than 2 employees.
-- ====================================================================================================================================
   SELECT city, COUNT(emp_id) AS employee_id
   FROM employees
   GROUP BY city
   HAVING COUNT(emp_id) > 2;
-- =====================================================================================================================================
--Task 52: Display departments where average salary is greater than 45000.
-- =====================================================================================================================================
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
  HAVING AVG(salary) > 45000;
-- =====================================================================================================================================
-- Task 53: Display cities where total salary is greater than 100000.
-- ==================================================================================================================================
  SELECT city, SUM(salary) AS total_salary
  FROM employees
  GROUP BY city
  HAVING SUM(salary) > 100000;
-- =====================================================================================================================================
-- Task 54: Display departments having at least 2 employees.
-- ====================================================================================================================================
  SELECT department_id, COUNT(emp_id) AS employee_count
  FROM employees
  GROUP BY department_id
  HAVING COUNT(emp_id) >= 2;
-- ====================================================================================================================================
-- Task 55: Display salaries that are assigned to more than 1 employee.
-- ====================================================================================================================================
   SELECT salary, COUNT(emp_id) AS employee_id
   FROM employees
   GROUP BY salary
   HAVING COUNT(emp_id) > 1;
-- ====================================================================================================================================
-- Task 56: Display all employees and their department names.
-- ====================================================================================================================================
   SELECT e.name, d.department_name
   FROM employees e
   LEFT JOIN departments d
   ON e.department_id = d.department_id;
-- ====================================================================================================================================
-- Task 57: Display employee names and project names only for employees who have projects.
-- =====================================================================================================================================
   SELECT e.name, p.project_name
   FROM employees e
   INNER JOIN projects p
   ON e.emp_id = p.emp_id;
-- =====================================================================================================================================
-- Task 58: Display all departments along with employee names.
-- ====================================================================================================================================
   SELECT d.department_name, e.name
   FROM departments d
   LEFT JOIN employees e
   ON d.department_id = e.department_id;
-- =====================================================================================================================================
-- Task 59: Display employee names, project names, and department names.
-- ==================================================================================================================================
   SELECT e.name, p.project_name, d.department_name
   FROM employees e
   INNER JOIN projects p
   ON e.emp_id = p.emp_id
   INNER JOIN departments d
   ON e.department_id = d.department_id;
-- =====================================================================================================================================
-- Task 59: Display all employees even if they are not assigned to any project.
-- =====================================================================================================================================
   SELECT e.name, p.project_name
   FROM employees e
   LEFT JOIN projects p
   ON e.emp_id = p.emp_id;
-- =====================================================================================================================================
-- Task 60: Display all projects along with employee names.
-- =================================================================================================================================
   SELECT p.project_name, e.name
   FROM projects p
   LEFT JOIN employees e
   ON p.emp_id = e.emp_id;
-- ==================================================================================================================================
-- Task 61: Display employee names and department names only for employees who have departments assigned.
-- =================================================================================================================================
   SELECT e.name, d.department_name
   FROM employees e
   INNER JOIN departments d
   ON e.department_id = d.department_id;
-- ====================================================================================================================================
-- Task 62: Display all employees and project names, including employees without projects.
-- =====================================================================================================================================
   SELECT e.name, p.project_name
   FROM employees e
   LEFT JOIN projects p
   ON e.emp_id = p.emp_id;
-- ====================================================================================================================================
-- Task 63: Display all departments even if no employees belong to them.
-- ====================================================================================================================================
   SELECT d.department_name, e.name
   FROM departments d
   LEFT JOIN employees e
   ON d.department_id = e.department_id;
-- ====================================================================================================================================
-- Task 64: Display employee names, cities, and project names only for employees working on projects.
-- ====================================================================================================================================
   SELECT e.name, e.city, p.project_name
   FROM employees e
   INNER JOIN projects p
   ON e.emp_id = p.emp_id;
-- =====================================================================================================================================

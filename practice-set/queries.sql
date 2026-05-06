-- ============================================
-- Practice-Set Sql Queries.
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

   

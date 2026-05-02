-- ============================================
-- Practice-Set Sql Queries.
-- ============================================

-- Table: Employees
-- CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Amit', 'HR', 30000, 'Mumbai'),
(2, 'Neha', 'IT', 50000, 'Bangalore'),
(3, 'Raj', 'IT', 50000, 'Bangalore'),
(4, 'Priya', 'Finance', 40000, 'Delhi'),
(5, 'Karan', 'HR', 30000, 'Mumbai'),
(6, 'Sneha', 'IT', 60000, 'Hyderabad');

-- =====================================================
-- Task 1: Display all columns from the table
-- =====================================================
   SELECT * from employees;
-- ======================================================
-- Task 2: Display only name and salary
-- ======================================================
   SELECT name, salary from employees;
-- ========================================================
-- Task 3: Display employees who work in the IT department
-- ========================================================
   SELECT * from employees where department = 'IT';
-- ==========================================================
-- Task 4: Display employees with salary greater than 40,000
-- ==========================================================
   SELECT * from employees where salary > 40000;
-- ==========================================================
-- Task 5: Display employees from Bangalore
-- ==========================================================
   SELECT * from employees where city = 'Bangalore'
-- ==============================================================
-- Task 6: Display name and city where salary is less than 50,000
-- ===============================================================
   SELECT name, city from employees where salary < 50000;
-- ================================================================
-- Task 7: Show all unique departments
-- ================================================================
   SELECT distinct department from employees;
-- ================================================================
-- Task 8: Show unique cities
-- ================================================================
   SELECT distinct city from employees;
-- ================================================================
-- Task 9: Show unique salary values
-- ================================================================
   SELECT distinct salary from employees
-- ================================================================
-- Task 10: Show unique combinations of department and city
-- ================================================================
   SELECT distinct department,city from employees;
-- ================================================================
-- Task 11: Count number of distinct departments
-- ================================================================
   SELECT count(distinct department) from employees;
-- ================================================================
-- Task 12: Count number of distinct cities
-- ===============================================================
   SELECT count(distinct city) from employees;
-- ===============================================================
-- Task 13: Show distinct departments where salary > 40000
-- ===============================================================
   SELECT distinct department from employees where salary > 40000;
-- ================================================================
-- ===============================================================
-- Task 14: Show distinct cities for IT department
-- ===============================================================
   SELECT distinct city from employees where department = 'IT';
-- ===============================================================
-- Task 15: Show all employees whose name starts with 'A'
-- ================================================================
   SELECT * from employees where name like 'A%';
-- ===================================================================
-- Task 16: Show employees whose salary is between 30,000 and 50,000
-- ===================================================================
   SELECT * from employees where salary between 30000 and 50000;
-- ===================================================================
-- Task 17: Show employees who are NOT from Mumbai
-- ===================================================================
   SELECT * from employees where city <> 'Mumbai';
-- ===================================================================
-- Task 18: Show unique departments from Bangalore only
-- ===================================================================
   SELECT distinct department from employees where city = 'Bangalore';
-- ====================================================================
-- Task 19: Show employees whose name ends with 'a'
-- ====================================================================
   SELECT * from employees where name like '%a';
-- ====================================================================
-- Task 20: Show employees working in either HR or IT
-- ====================================================================
   SELECT * from employees where department in ('HR','IT');
-- ====================================================================
-- Task 21: Show employees whose salary is not 30000
-- ====================================================================
   SELECT * from employees where salary <> 30000;
-- ====================================================================
-- Task 22: Show employees who work in IT and have salary > 50,000
-- ====================================================================
   SELECT * from employees where department = 'IT' and salary > 50000;
-- ====================================================================
-- Task 23: Show employees from Bangalore or Mumbai
-- ===================================================================
   SELECT * from employees where city in ('Bangalore','Mumbai');
-- =======================================================================
-- Task 24: Show employees whose salary is between 30k–50k and are from IT
-- ===================================================================================
   SELECT * from employees where salary between 30000 and 50000 and department = 'IT';
-- ===================================================================================
-- Task 25: Show employees not in HR department
-- ===================================================================================
   SELECT * from employees where department <> 'HR';
-- ====================================================================================================
-- Task 26: Show employees whose salary is greater than 30,000 and less than 60,000 (don’t use BETWEEN)
-- ====================================================================================================
   SELECT * from employees where salary > 30000 and salary < 60000;
-- ====================================================================================================
-- Task 27: Show employees not working in IT or HR
-- ====================================================================================================
   SELECT * from employees where department not in ('IT','HR');
-- ====================================================================================================
-- Task 28: Show employees whose city is neither Bangalore nor Mumbai
-- ====================================================================================================
    SELECT * from employees where city not in ('Bangalore', 'Mumbai');
-- ====================================================================================================
-- Task 29: Show employees whose name starts with 'A' and ends with 'a'
-- ====================================================================================================
    SELECT * from employees where name like 'A%a';
-- ====================================================================================================
-- Task 30: Show employees whose name contains 'ar'
-- ====================================================================================================
    SELECT * from employees where name like '%a%';
-- ====================================================================================================
-- Task 31: Show employees whose name starts with any vowel (A, E, I, O, U)
-- ====================================================================================================
    SELECT * from employees where name like 'A' or name like 'E' or name like 'I' or name like 'O' 
    or name like 'U';
-- ====================================================================================================
-- Task 32: Show employees whose name does NOT contain 'a'
-- ====================================================================================================
    SELECT * from employees where name not like '%a%';
-- ====================================================================================================
-- Task 33: Show employees sorted by salary (descending) and for same salary sort by name (ascending)
-- ====================================================================================================
   SELECT * from employees order by salary desc, name asc;
-- ====================================================================================================
-- Task 34: how employees sorted by length of name
-- ====================================================================================================
    SELECT * from employees order by length(name) asc;
-- ====================================================================================================
-- Task 35: Show employees whose salary is exactly 30000, 40000, or 50000 (don’t use IN)
-- ====================================================================================================
   SELECT * from employees where salary = 30000 or salary = 40000 or salary = 50000;
-- ====================================================================================================
-- Task 36: Show employees whose department is not IT, but salary is greater than 45000
-- ====================================================================================================
   SELECT * from employees where department <> 'IT' and salary > 45000;
-- ====================================================================================================
-- Task 37: Show employees whose city is Bangalore AND salary is NOT between 30k–50k
-- ====================================================================================================
   SELECT * from employees where city = 'Bangalore' and salary not between 30000 and 50000;
-- ====================================================================================================
-- Task 38: Show employees whose name does not start with 'S'
-- ====================================================================================================
   SELECT * from employees where name not like 'S%';
-- ====================================================================================================
-- Task 39: Show employees whose second letter is 'a'
-- ====================================================================================================
   SELECT * from employees where name like '_a%';
-- ====================================================================================================
-- Task 40: Show employees whose name has at least 4 characters
-- ====================================================================================================
   SELECT * from employees where length(name)>= 4;
-- ====================================================================================================
-- Task 41: Show employees whose name has exactly 3 characters
-- ===================================================================================================
   SELECT * from employees where name like '___';
-- ===================================================================================================

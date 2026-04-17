-- ============================================
-- Practice Set Sql Queries.
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
-- Task 7:

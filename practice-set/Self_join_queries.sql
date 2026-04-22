-- =============================================================
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    manager_id INT,
    salary INT
);

INSERT INTO employees VALUES
(1, 'Amit', NULL, 60000),
(2, 'Neha', 1, 50000),
(3, 'Raj', 1, 45000),
(4, 'Priya', 2, 40000),
(5, 'Karan', 2, 35000);
-- ==================================================================
-- Task 1: . Show employee name and manager name
-- ==================================================================
  SELECT e.name AS employee_name, m.name AS manager_name 
  FROM employees e 
  JOIN employees m 
  ON e.manager_id = m.emp_id;
-- ====================================================================
-- Task 2: Show employee name and manager salary
-- ====================================================================
   SELECT e.name AS employee_name, m.salary AS manager_salary
   FROM employees e
   JOIN employees m
   ON e.manager_id = m.emp_id;
-- =======================================================================================
-- Task 3: Show all employees with their manager names (include employees with no manager)
-- ========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name 
   FROM employees e 
   LEFT JOIN employees m 
   ON e.manager_id = m.emp_id;
-- =========================================================================================
-- Task 4: Show employees who have a manager
-- =========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name 
   FROM employees e 
   LEFT JOIN employees m 
   ON e.manager_id = m.emp_id 
   WHERE m.emp_id IS NOT NULL;
-- =========================================================================================
-- Task 5: Show employees who do NOT have a manager
-- =========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name 
   FROM employees e 
   LEFT JOIN employees m 
   ON e.manager_id = m.emp_id 
   WHERE m.emp_id IS NULL;
-- ==========================================================================================
--Task 6: Show employees earning more than their manager
-- ==========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name
   FROM employees e
   INNER JOIN employees m
   ON e.manager_id = m.emp_id
   WHERE e.salary > m.salary;
-- ==========================================================================================
-- Task 7:  Show employees earning less than their manager
-- =========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name
   FROM employees e
   INNER JOIN employees m
   ON e.manager_id = m.emp_id
   WHERE e.salary < m.salary;
-- ==========================================================================================
-- Task 8:  Show employees earning equal to their manager
-- ==========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name
   FROM employees e
   INNER JOIN employees m
   ON e.manager_id = m.emp_id
   WHERE e.salary = m.salary;
-- ===========================================================================================
-- Task 9: Show employee name, employee salary, manager name, manager salary
-- ===========================================================================================
   SELECT e.name AS employee_name, e.salary AS employee_salary,
       m.name AS manager_name, m.salary AS manager_salary
      FROM employees e
      INNER JOIN employees m
      ON e.manager_id = m.emp_id;
-- ===========================================================================================
--Task 10: Show employees whose manager earns more than 50,000
-- ===========================================================================================
    SELECT e.name As employee_name, m.name AS manager_name, m.salary AS manager_salary
    from employees AS e 
    inner join employees AS m on
    e.manager_id = m.emp_id where
    m.salary > 50000;
-- ============================================================================================
-- Task 11: Show manager name and number of employees under them
-- ============================================================================================
   SELECT m.name AS manager_name, COUNT(e.emp_id) AS employee_count
   FROM employees e
   INNER JOIN employees m
   ON e.manager_id = m.emp_id
   GROUP BY m.name;
-- ===========================================================================================
-- Task 12: Show managers who have more than 1 employee
-- ===========================================================================================
   SELECT m.name AS manager_name, COUNT(e.emp_id) AS employee_count
   FROM employees e
   INNER JOIN employees m
   ON e.manager_id = m.emp_id
   GROUP BY m.name
   HAVING COUNT(e.emp_id) > 1;
-- ===========================================================================================
-- Task 13: Manager with highest number of employees
-- ===========================================================================================
    SELECT m.name AS manager_name, COUNT(e.emp_id) AS employee_count
    FROM employees e
    JOIN employees m
    ON e.manager_id = m.emp_id
    GROUP BY m.name
    ORDER BY employee_count DESC
    LIMIT 1;
-- ============================================================================================
-- Task 14: Employees whose manager is 'Amit'
-- ===========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name 
   FROM employees e 
   INNER JOIN employees m 
   ON e.manager_id = m.emp_id 
   WHERE m.name = 'Amit';
-- ===========================================================================================
-- Task 15: Show all employee-manager pairs
-- ===========================================================================================
   SELECT e.name AS employee_name, m.name AS manager_name
   FROM employees e
   LEFT JOIN employees m
   ON e.manager_id = m.emp_id;

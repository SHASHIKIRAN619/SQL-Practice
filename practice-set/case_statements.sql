-- =================================================
  SQL Queries: Case Statements
-- =================================================
    Table: 
    employees:-  id , name , salary , department , city
    
-- =========================================================================================================================
-- Task 1: Show employee name and a column salary_level:
         salary > 50000 → 'High'
         else → 'Low'
-- =========================================================================================================================
   SELECT name, 
   CASE
      WHEN salary > 50000 THEN 'High'
      ELSE 'Low'
   END AS salary_level from employees
-- ==========================================================================================================================
- Task 2: Show name and dept_type:
        'IT' → 'Tech'
        'HR' → 'Non-Tech'
         others → 'Other'
-- ==========================================================================================================================
   SELECT name, 
   CASE
     WHEN department = 'IT' THEN 'Tech'
     WHEN department = 'HR' THEN 'Non-Tech'
     ELSE 'other'
   END AS dept_type from employees;
-- ===========================================================================================================================
-- Task 3: Show name and city_group:
         'Bangalore' → 'Metro'
          others → 'Non-Metro'
-- ===========================================================================================================================
   SELECT name,
   CASE
      WHEN city = 'Bangalore' THEN 'Metro'
      ELSE 'Non-Metro'
   END AS city_group from employees;
-- ===========================================================================================================================
-- Task 4: Show name and salary_category:
         60000 → 'High'
        30000–60000 → 'Medium'
        <30000 → 'Low'
-- ===========================================================================================================================
   SELECT name,
   CASE
     WHEN salary > 60000 THEN 'High'
     WHEN salary between 30000 and 60000 THEN 'Medium'
     ELSE 'Low'
   END AS salary_category from employees;
-- ===========================================================================================================================
-- Task 5: Show name and bonus:
          IT → salary * 0.10
          HR → salary * 0.08
          Others → salary * 0.05
-- ===========================================================================================================================
   SELECT name,
   CASE
      WHEN department = 'IT' THEN SALARY * 0.10
      WHEN department = 'HR' THEN salary * 0.08
      ELSE salary * 0.05
   END AS bonus from employees;
-- ===========================================================================================================================

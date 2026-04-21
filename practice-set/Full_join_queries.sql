
-- =============================================================================================
-- Task 1: Show all customers and all orders
-- =============================================================================================
SELECT c.customer_id, c.name, c.city, o.order_id, o.amount 
FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id 

UNION 

SELECT c.customer_id, c.name, c.city, o.order_id, o.amount 
FROM customers c 
RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;
-- =================================================================================================
-- Task 2: Show customer name and order_id (include all unmatched)
-- =================================================================================================
SELECT c.name, o.order_id 
FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id

UNION

SELECT c.name, o.order_id 
FROM customers c 
RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;
-- ======================================================================================================
-- Task 3: Show customer name, city, and order amount (include all)
-- ======================================================================================================
SELECT c.name, c.city, o.amount 
FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id

UNION

SELECT c.name, c.city, o.amount 
FROM customers c 
RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;
-- ========================================================================================================
-- Task 4: Show all customers and all orders with full details
-- ========================================================================================================
SELECT c.customer_id, c.name, c.city, o.order_id, o.amount 
FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, c.name, c.city, o.order_id, o.amount 
FROM customers c 
RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;
-- ==========================================================================================================
-- Task 5: Show customer_id and order_id (include all unmatched rows)
-- ==========================================================================================================
SELECT c.customer_id, o.order_id 
FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, o.order_id 
FROM customers c 
RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;

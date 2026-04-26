-- ========================================================================================
   --SQL Queries: RIGHT Join
-- =========================================================================================
-- ========================================================================================
-- Task 1: Show all orders with customer details (include orders with no customer)
-- =======================================================================================================================
   SELECT o.order_id, c.customer_id, c.name, c.city FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;
-- =======================================================================================================================
-- Task 2: Show order_id and customer name (include unmatched orders)
-- =======================================================================================================================
   SELECT o.order_id, c.name FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;
-- =======================================================================================================================
-- Task 3: Show all orders with amount and customer city
-- =======================================================================================================================
   SELECT o.order_id, o.amount, c.city FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id;
-- ======================================================================================================================
-- Task 4: Show all orders even if customer does not exist
-- ======================================================================================================================
   SELECT o.order_id,c.name from customers as c right join orders o on c.customer_id = o.customer_id;
-- ======================================================================================================================
-- Task 5: Show order_id, amount, and customer name
-- ======================================================================================================================
   SELECT o.order_id,o.amount,c.name from customers c right join orders o on c.customer_id = o.customer_id;
-- =====================================================================================================================
-- Task 6: Show orders where customer does not exist
-- ====================================================================================================================
   SELECT o.order_id, c.name  FROM customers c  RIGHT JOIN orders o  ON c.customer_id = o.customer_id 
   WHERE c.customer_id IS NULL;
-- ====================================================================================================================
-- Task 7: Show orders where customer exists
-- ===================================================================================================================
   SELECT o.order_id, c.name FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id 
   WHERE c.customer_id IS NOT NULL;
-- ===================================================================================================================
-- Task 8: Show orders with amount > 5000 (don’t break RIGHT JOIN)
-- ===================================================================================================================
   SELECT o.order_id, o.amount, c.name FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id
   WHERE o.amount > 5000;
-- ===================================================================================================================
-- Task 9: Show orders where customer is from Mumbai
-- ===================================================================================================================
   SELECT o.order_id, c.name, c.city FROM customers c RIGHT JOIN orders o ON c.customer_id = o.customer_id 
   AND c.city = 'Mumbai';
-- ===================================================================================================================
-- Task 10: Show orders where customer name is NULL
-- =========================================================================================================================
   SELECT o.order_id,c.name from customers as c right join orders as o on c.customer_id = o.customer_id where c.name is null;

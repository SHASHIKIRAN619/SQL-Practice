-- ========================================================================================
   --SQL Queries: Inner Join
-- =========================================================================================
CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Neha', 'Bangalore'),
(3, 'Raj', 'Delhi'),
(4, 'Priya', 'Chennai');
-- --------------------------------------------------------------------------------------------------------------------------
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    amount INT
);

INSERT INTO orders VALUES
(101, 1, 5000),
(102, 2, 7000),
(103, 1, 3000),
(104, 3, 4000),
(105, 5, 6000);
-- =============================================================================================================================
-- Task 1: Show all customers with their orders (include customers with no orders)
-- =============================================================================================================================
   SELECT c.customer_id,c.name,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id;
-- =============================================================================================================================
-- Task 2: Show customer name and order amount (include customers with no orders)
-- =============================================================================================================================
   SELECT c.name,o.amount from customers as c left join orders as o on c.customer_id = o.customer_id;
-- =============================================================================================================================
-- Task 3: Show all customers and their order IDs
-- =============================================================================================================================
   SELECT c.customer_id,c.name,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id;
-- =============================================================================================================================
-- Task 4: Show all customers with city and order amount
-- =============================================================================================================================
   SELECT c.customer_id,c.name,c.city,o.amount from customers as c left join orders as o on c.customer_id = o.customer_id;
-- =============================================================================================================================
-- Task 5: Show all customers even if they have no orders
-- =============================================================================================================================
   SELECT c.customer_id,c.name,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id;
-- =============================================================================================================================
-- Task 6: Show customers who have no orders
-- =============================================================================================================================
   SELECT c.name,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id where o.order_id is null;
-- =============================================================================================================================
-- Task 7: Show customers who have at least one order
-- ================================================================================================================================
   SELECT c.name,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id where o.order_id is not null;
-- ================================================================================================================================
-- Task 8: Show customers with orders greater than 5000
-- ================================================================================================================================
   SELECT c.name,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id and o.amount > 5000;
-- ================================================================================================================================
-- Task 9: Show customers from Mumbai and their orders (include those with no orders)
-- ================================================================================================================================
   SELECT c.name,c.city,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id where c.city = 'Mumbai';
-- ===================================================================================================================================
-- Task 10: Show customers whose order amount is NULL
-- =================================================================================================================================
   SELECT c.name,o.order_id,o.amount from customers as c left join orders as o on c.customer_id = o.customer_id where o.order_id is null;
-- =======================================================================================================================================
-- Task 11: Count number of orders per customer (include 0 orders)
-- =================================================================================================================================
   SELECT c.name,count(o.order_id) as num_of_orders from customers c left join orders o on c.customer_id = o.customer_id 
   group by(c.name);
-- =================================================================================================================================
-- Task 12: Total order amount per customer (include no orders)
-- =======================================================================================================================================
   SELECT c.name,o.order_id,sum(o.amount) as total_order_amount from customers as c left join orders as o on c.customer_id = o.customer_id
   group by(c.name);
-- ========================================================================================================================================
-- Task 13: Show customers with 0 orders
-- =================================================================================================================================
   SELECT c.name,o.order_id from customers as c left join orders as o on c.customer_id = o.customer_id where o.order_id is null;
-- =================================================================================================================================
-- Task 14: Show customers with more than 1 order
-- =================================================================================================================================
   SELECT c.name,count(o.order_id) as order_count from customers as c left join orders as o on c.customer_id = o.customer_id 
   group by(c.name) having count(o.order_id) > 1;
-- =================================================================================================================================
-- Task 15: Show customers whose total order amount > 5000
-- =================================================================================================================================
   SELECT c.name,sum(o.amount) as total_order_amount from customers as c left join orders as o on c.customer_id = o.customer_id
   group by(c.name) having sum(o.amount) > 5000;

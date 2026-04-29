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
-- Task 1: Show all customers with their orders
-- ============================================================================================================================
  SELECT c.customer_id,c.name,o.order_id from customers as c inner join orders as o on c.customer_id = o.customer_id;
-- ============================================================================================================================
-- Task 2: Show customer name and order amount
-- ============================================================================================================================
   SELECT c.name,o.amount from customers as c inner join orders as o on c.customer_id = o.customer_id;
-- ============================================================================================================================
-- Task 3: Show customer name and city along with order amount
-- ============================================================================================================================
   SELECT c.name,c.city,o.amount from customers as c inner join orders as o on c.customer_id = o.customer_id;
-- ============================================================================================================================
-- Task 4: Show all orders with customer names
-- ============================================================================================================================
   SELECT o.order_id,o.amount,c.name from orders as o inner join customers as c on o.customer_id = c.customer_id;
-- ============================================================================================================================
-- Task 5: Show orders where amount > 5000 with customer name
-- ==================================================================================================================================
   SELECT o.order_id,o.amount,c.name from orders as o inner join customers as c on o.customer_id = c.customer_id where o.amount > 5000
-- ===================================================================================================================================
-- Task 6: Show customers from Bangalore with their orders
-- ==============================================================================================================================================
   SELECT c.name,c.city,o.order_id,o.amount from customers as c inner join orders as o on c.customer_id = o.customer_id where c.city = 'Bangalore'
-- ===============================================================================================================================================
-- Task 7: Show orders of customer 'Amit'
-- ===========================================================================================================================================
   SELECT o.order_id,o.amount,c.name,c,city from orders as o inner join  customers as c on o.customer_id = c.customer_id where c.name = 'Amit';
-- ============================================================================================================================================
-- Task 8: Show customers who placed orders greater than 4000
-- ===========================================================================================================================================
   SELECT c.name,c.city,o.order_id,o.amount from customers as c inner join orders as o on c.customer_id = o.customer_id where o.amount > 4000
-- ===========================================================================================================================================
-- Task 9: Show orders from customers in Mumbai
-- ============================================================================================================================================
   SELECT o.order_id,o.amount,c.name,c.city from customers as c inner join orders as o on c.customer_id = o.customer_id where c.city = 'Mumbai'
-- ============================================================================================================================================
-- Task 10: Show customer name and amount where amount is between 3000 and 6000
-- ============================================================================================================================================
   SELECT c.name,o.amount from customers as c inner join orders as o on c.customer_id = o.customer_id where o.amount between 3000 and 6000;
-- ===========================================================================================================================================
-- Task 11: Total order amount per customer
-- ==================================================================================================================================
   SELECT sum(o.order_id) as total_order, c.name from orders as on inner join customers as c on o.customer_id = c.customer_id 
   group by(c.name);
-- =================================================================================================================================
-- Task 12: Count number of orders per customer
-- =================================================================================================================================
   SELECT count(o.order_id) as num_of _orders,c.name from orders as o inner join customers as c on o.customer_id = c.customer_id
   group by(c.name);
-- ================================================================================================================================
-- Task 13: Show average order amount per customer
-- ================================================================================================================================
   SELECT avg(o.amount)as avg_order_amount,c.name from orders as o inner join customers as c on o.customer_id = c.customer_id
   group by(c.name);
-- ================================================================================================================================
-- Task 14: Show customers having total order amount > 8000
-- ================================================================================================================================
   SELECT c.name,sum(o.amount) as total_order_amount from customers as c inner join orders as o on c.customer_id = o.customer_id
   group by(c.name) having sum(o.amount) > 8000;
-- ================================================================================================================================
-- Task 15: Show customers having more than 1 order
-- ================================================================================================================================
   SELECT c.name,count(o.order_id) as order_count from customers as c inner join orders as o on c.customer_id = o.customer_id
   group by(c.name) having count(o.order_id) > 1;
-- ================================================================================================================================
Tables:- 
   customers:- customer_id, name;
   orders:- order_id, customer_id;
   order_items:- item_id, order_id, product_name, price;
-- ================================================================================================================================
                                             --Inner Join With Multiple Tables--
-- ================================================================================================================================
-- Task 1: . Show customer name and product names they purchased
-- ================================================================================================================================
   SELECT c.name, o.order_id, oi.product_name
   FROM customers c
   INNER JOIN orders o
   ON c.customer_id = o.customer_id
   INNER JOIN order_items oi
   ON o.order_id = oi.order_id;
-- ================================================================================================================================
-- Task 2: Show customer name and total number of items they purchased
-- ================================================================================================================================
   SELECT c.name, COUNT(oi.item_id) AS total_items
   FROM customers c
   INNER JOIN orders o
   ON c.customer_id = o.customer_id
   INNER JOIN order_items oi
   ON o.order_id = oi.order_id
   GROUP BY c.name;
-- ================================================================================================================================
-- Task 3: Show order_id and total price of each order
-- ================================================================================================================================
   SELECT o.order_id, SUM(oi.price) AS total_price 
   FROM orders o 
   INNER JOIN order_items oi 
   ON o.order_id = oi.order_id 
   GROUP BY o.order_id;
-- ===============================================================================================================================
-- Task 4: Show customer name and total amount spent
-- ===============================================================================================================================
   SELECT c.name, SUM(oi.price) AS total_price
   FROM customers c
   INNER JOIN orders o
   ON c.customer_id = o.customer_id
   INNER JOIN order_items oi
   ON o.order_id = oi.order_id
   GROUP BY c.name;
-- ===============================================================================================================================
-- Task 5: Show customer who spent the most money
-- ==============================================================================================================================
  SELECT c.name, SUM(oi.price) AS total_spent
  FROM customers c
  INNER JOIN orders o
  ON c.customer_id = o.customer_id
  INNER JOIN order_items oi
  ON o.order_id = oi.order_id
  GROUP BY c.name
  ORDER BY total_spent DESC
  LIMIT 1;
-- =============================================================================================================================
-- Task 6: Show customer name and total number of orders placed
-- =============================================================================================================================
   SELECT c.name, COUNT(o.order_id) AS total_num_orders
   FROM customers c
   INNER JOIN orders o
   ON c.customer_id = o.customer_id
   GROUP BY c.name;
-- =============================================================================================================================
-- Task 7: Show order_id and number of items in each order
-- =============================================================================================================================
   SELECT o.order_id, COUNT(oi.item_id) AS total_items 
   FROM orders o 
   INNER JOIN order_items oi 
   ON o.order_id = oi.order_id 
   GROUP BY (o.order_id);
-- ==============================================================================================================================
-- Task 8: Show orders where total price is greater than 5000
-- ==============================================================================================================================
   SELECT o.order_id, SUM(oi.price) AS total_price 
   FROM orders o 
   INNER JOIN order_items oi 
   ON o.order_id = oi.order_id 
   GROUP BY (o.order_id) 
   HAVING SUM(oi.price) > 5000;
-- ==============================================================================================================================
-- Task 9: Show customer name and total number of products purchased
-- ==============================================================================================================================
   SELECT c.name, COUNT(oi.item_id) AS total_num_products 
   FROM customers c 
   INNER JOIN orders o 
   ON c.customer_id = o.customer_id 
   INNER JOIN order_items oi 
   ON o.order_id = oi.order_id 
   GROUP BY (c.name);
-- ==============================================================================================================================

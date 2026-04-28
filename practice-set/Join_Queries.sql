-- -----------------------------------------------------------------------------------------------------------
Tables: 
   customers(customer_id, name, city);
   orders(order_id, customer_id, amount);
   employees(emp_id, name, manager_id, salary);
-- ------------------------------------------------------------------------------------------------------------
-- Task 1: Show customer name and their order IDs
-- -----------------------------------------------------------------------------------------------------------
    Select c.name,o.order_id from customers c 
    inner join orders o on 
    c.customer_id = o.customer_id;
-- -----------------------------------------------------------------------------------------------------------
-- Task 2: Show customer name and order amount
-- -----------------------------------------------------------------------------------------------------------
   Select c.name,o.amount from customers c 
   inner join orders o on
   c.customer_id = o.customer_id;
-- -----------------------------------------------------------------------------------------------------------
-- Task 3: Show all customers and their orders
-- -----------------------------------------------------------------------------------------------------------
   Select c.customer_id,c.name,c.city,o.order_id,o.amount from customers c 
   left join orders o on
   c.customer_id = o.customer_id;
-- -----------------------------------------------------------------------------------------------------------
-- Task 4: Show customers who have not placed any orders
-- -----------------------------------------------------------------------------------------------------------
    Select c.customer_name,o.order_id from customers c 
    left join orders o on
    c.customer_id = o.customer_id 
    where o.order_id is null;
-- -----------------------------------------------------------------------------------------------------------
-- Task 5: Show orders that are not linked to any customer
-- ----------------------------------------------------------------------------------------------------------
    Select o.order_id,c.name from orders o 
    left join customers c on
    c.customer_id = o.customer_id
    where c.customer_id is null;
-- ------------------------------------------------------------------------------------------------------------
-- Task 6: Show customers who placed orders greater than 5000
-- ------------------------------------------------------------------------------------------------------------
    Select c.name,o.order_id from customers c 
    inner join orders o on
    c.customer_id = o.customer_id
    where o.amount > 5000;
-- -------------------------------------------------------------------------------------------------------------
-- Task 7: Show customers from Bangalore and their orders
-- ------------------------------------------------------------------------------------------------------------
     Select c.name,o.order_id,o.amount, from customers c 
     inner join orders o on
     c.customer_id = o.customer_id
     where o.city = 'Bangalore';
-- -------------------------------------------------------------------------------------------------------------
-- Task 8: Show orders where customer city is Mumbai
-- -------------------------------------------------------------------------------------------------------------
    Select o.order_id,o.amount,c.name,c.city from orders o 
    inner join customers c on
    c.customer_id = o.customer_id
    where c.city = 'Mumbai';
-- ------------------------------------------------------------------------------------------------------------
-- Task 9: Show customers who placed orders between 3000 and 7000
-- -----------------------------------------------------------------------------------------------------------
   Select c.name,o.order_id,o.amount from customers c
   inner join orders o on
   c.customer_id = o.customer_id
   where o.amount between 3000 and 7000;
-- -----------------------------------------------------------------------------------------------------------
-- Task 10: Show total number of orders per customer
-- -----------------------------------------------------------------------------------------------------------
    SELECT c.name, COUNT(o.order_id) AS total_orders
    from orders o
    inner join customers c
    on c.customer_id = o.customer_id
    group by c.name;
-- ------------------------------------------------------------------------------------------------------------
-- Task 11: Show total order amount per customer
-- -----------------------------------------------------------------------------------------------------------
    SELECT SUM(o.amount) AS total_amount_per_customer, c.name 
    FROM orders o 
    INNER JOIN customers c 
    ON o.customer_id = c.customer_id 
    GROUP BY (c.name);
-- ------------------------------------------------------------------------------------------------------------
-- Task 12: Show customers who placed more than 1 order
- -------------------------------------------------------------------------------------------------------------
    SELECT c.name, COUNT(o.order_id) AS order_count
    FROM orders o
    INNER JOIN customers c
    ON o.customer_id = c.customer_id
    GROUP BY c.name
    HAVING COUNT(o.order_id) > 1;
-- ------------------------------------------------------------------------------------------------------------
-- Task 13: Show customers whose total order amount is greater than 10000
-- ------------------------------------------------------------------------------------------------------------
    SELECT c.name, SUM(o.amount) AS total_order_amount 
    FROM customers c 
    INNER JOIN orders o 
    ON c.customer_id = o.customer_id 
    GROUP BY (c.name) 
    HAVING SUM(o.amount) > 10000;
-- --------------------------------------------------------------------------------------------------------------



    

SQL Practised 
-- show DATABASES;
use mydb;
show tables;
-- SELECT * from students;
-- SELECT DISTINCT firstname from students; 
-- distinct is used to return only diffrent values 
-- ---------------------------Order by --------------------------
-- select * FROM students ORDER BY marks;
-- order by keyword is used to sort the resultent in ascending order by default
-- SELECT * from students order by Address;
-- sort by alphabetical order
-- SELECT * from students order by rollnum DESC;
-- -------------------And , or, Not ----------------------------
-- SELECT * from students where FirstName = 'harsh' AND city = 'itly';
-- SELECT * from students where city = 'new york' and rollnum < 5;
-- SELECT * from teachers;
-- SELECT * from teachers WHERE subject = 'history' or subject = 'english';
-- SELECT * from teachers where not subject = 'history';
-- UPDATE teachers set subject = NULL where first_name = 'john';
-- SELECT * from teachers;
-- ------------------------Checking NUll or not Null--------------
-- SELECT * FROM teachers where subject is NOT null;
-- SELECT * from teachers where subject is null;
-- for selecting first 5 from the top of the TABLE
-- SELECT * from teachers LIMIT 5;
-- -------------------------min max functions------------------------------------
-- SELECT min(marks) from students;
-- select max(marks) from students;
-- -------------------------Count function-----------------------
-- its returns returns the number of rows that matches a specified criterion.
-- SELECT count(*) from teachers;
-- SELECT Count(firstname) from students where marks > (select AVG(marks) FROM 
students);
-- ------------------------Sum, avg function--------------------------
-- SELECT sum(marks) from students; 
-- SELECT avg(marks) from students; 
-- ------------------------LIKE, wild card characters---------------
-- //The LIKE operator is used in a WHERE clause to search for a specified pattern in a 
column.
-- //There are two wildcards often used in conjunction with the LIKE operator:
-- //The percent sign % represents zero, one, or multiple characters
-- //The underscore sign _ represents one, single character
-- SELECT * from students where FirstName like 'b%';
-- //selecting all students whose name is started with b
-- SELECT * from students where firstname like 'h%h';
-- //selecting all students whose name is started with h and end with h 
-- select * from students where FirstName like '%RU%'
-- //selecting all students whose firstname contains ru 
-- SELECT * FROM students where firstname like 't___%';
-- //selecting all students whose firstname starts with t and after that it atleast have 3 
characters
-- select * from students where firstname like '_r%';
-- //selecting all students whose firstname second character conatains r
-- -----------------------IN BETWEEN operatos------------------------------
-- SELECT * from students WHERE city in ('satna','itly')
-- select * from teachers where subject not IN ('Science','physical','biology');
-- SELECT * from students where marks BETWEEN 50 AND 80;
-- SELECT * from students where marks BETWEEN 50 and 100 and Address in 
('ausis','canada');
-- --------------------------SQL Aliases -- As keyword--------------------------
-- select firstname as name from students;
-- SELECT firstname name from students;
-- -----------------------------------------------------------------
-- use classicmodels;
-- show tables;
-- SELECT * from payments; 
-- SELECT * from orders;
-- SELECT * from employees;
-- SELECT * from offices;
-- SELECT * from orderdetails;
-- SELECT * from customers;
-- SELECT * from productlines;
-- SELECT * from products;
-- -------------------------------------------joins-----------------------------------
-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records 
from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records 
from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
-- full join doesn't supports in mysql
-- inner join --
-- SELECT * from payments ORDER BY customerNumber;
-- SELECT * from orders ORDER BY customerNumber;
-- SELECT orders.customerNumber, orders.orderNumber, orders.requiredDate, 
orders.status FROM
-- orders INNER JOIN payments ON orders.customerNumber = 
payments.customerNumber ORDER BY customerNumber;
-- select * from employees;
-- select employees.employee_id, employees.department_id,employees.employee_name,
-- departments.department_name , departments.department_index from employees
INNER join departments on 
-- employees.department_id = departments.department_id;
-- Left join --
-- select employees.employee_id, employees.department_id,employees.employee_name,
-- departments.department_name , departments.department_index from employees left 
join departments on 
-- employees.department_id = departments.department_id;
-- Right join --
-- select employees.employee_id, employees.department_id,employees.employee_name,
-- departments.department_name , departments.department_index from employees 
RIGHT join departments on 
-- employees.department_id = departments.department_id;
-- full join --
-- select employees.employee_id, employees.department_id,employees.employee_name,
-- departments.department_name , departments.department_index from employees left 
join departments on 
-- employees.department_id = departments.department_id 
-- UNION
-- select employees.employee_id, employees.department_id,employees.employee_name,
-- departments.department_name , departments.department_index from employees 
RIGHT join departments on 
-- employees.department_id = departments.department_id;
-- self Join --
-- SELECT e.employee_name as employee, d.employee_name as dept
-- from employees e left JOIN employees d on e.department_id = d.employee_id
-- Union --
-- select * from employees UNION SELECT * from departments;
-- It returns only distinct values from both the employees and departments table
-- Group BY --
-- The GROUP BY statement groups rows that have the same 
-- values into summary rows,like "find the number of customers in each country".
-- The GROUP BY statement is often used with aggregate functions 
-- (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
-- SELECT * from employees;
-- SELECT count(employee_id), employee_name from
-- employees GROUP by employee_name ORDER BY COUNT(employee_id) DESC;
SELECT * from students;
-- SELECT count(rollnum), firstname from students GROUP by 
-- firstname ORDER BY count(rollnum) desc; 
-- SELECT rollnum, sum(marks) as total from students
-- GROUP BY rollnum;
-- show DATABASES;
use mydb; 
-- Group By 
-- SELECT * from departments;
-- SELECT * from students;
-- SELECT * from teachers;
-- here it will returns all employees name with no repetition
-- SELECT employee_name from employees GROUP By employee_name;
-- its will count numbers of appearance 
-- SELECT employee_name, count(employee_name) from 
-- employees GROUP BY employee_name;
-- SELECT employee_name, COUNT(employee_name) from 
-- employees GROUP BY employee_name ORDER BY COUNT(employee_name)
-- ASC;
-- having Clause 
-- SELECT employee_name, count(employee_name) from 
-- employees GROUP BY employee_name HAVING count(employee_name) > 1;
-- SELECT employee_name, count(employee_name) from 
-- employees GROUP BY employee_name HAVING count(employee_name) > 1
-- ORDER BY count(employee_name) DESC;
-- Exist 
-- The EXISTS operator is used to test for the existence of any record in a subquery.
-- The EXISTS operbase+same+in+mysql&oator returns TRUE if the subquery returns one or 
more records.
-- show TABLEs;
-- SELECT * from departments;
-- SELECT * from employees;
-- here the existing department no. in both table shows
-- SELECT * from employees WHERE EXISTS (SELECT department_name FROM 
departments WHERE
-- employees.department_id = departments.department_id);
-- SELECT * from employees WHERE NOT EXISTS (SELECT department_name FROM 
departments WHERE
-- employees.department_id = departments.department_id);
-- ANY and ALL 
-- Any will return true when any of the row satisfies any of the 
-- row in the subquery
-- SELECT department_id from employees WHERE employee_id < 5;
-- SELECT * from employees where department_id = ANY(
-- SELECT department_id from departments where department_index > 200);
ASSIGNMENT to create local database for e-commerce website 
use ecom_trail;
-- show tables;
DESC customer;
DESC product;
DESC orders;
DESC Categories;
DESC order_details;
-- INSERT INTO customer(first_name, last_name, email, address, password) 
VALUES('Harsh','pandey','harsh@gmail.com','maihar','password098');
-- INSERT INTO product (product_name, price, stock_quantity) VALUES('HP 
LAPTOP',25000.99,50);
-- INSERT INTO orders(user_id,total_amount) VALUES(1,25000.99);
-- INSERT INTO order_details(order_id,product_id,quantity, unit_price, total_price) 
VALUES(1,1,1,25000.99,25000.99);
SELECT * from customer;
SELECT * from product;
SELECT * from orders;
SELECT * from order_details;
SELECT
orders.order_id,
customer.first_name AS customer_first_name,
customer.last_name AS customer_last_name,
customer.email AS customer_email,
product.product_name,
order_details.quantity,
order_details.unit_price,
order_details.total_price
FROM orders
JOIN customer ON orders.user_id = customer.user_id
JOIN order_details ON orders.order_id = order_details.order_id
JOIN product ON order_details.product_id = product.product_id;
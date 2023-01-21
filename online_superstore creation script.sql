/* a SQL script that creates a database for an online superstore, 
with two related tables, "customers" and "orders", along with the columns listed.
 This script creates a database named "online_superstore" and then creates two tables within it, 
 "customers" and "orders". The "customers" table has a primary key of "customer_id" and "orders" table 
 has a primary key of "order_id" and it also has a foreign key "customer_id" that references 
 the primary key "customer_id" in the customers table. With this script you can demonstrate joins 
 between these two tables by matching the foreign key and the primary key. */

-- Create the database
CREATE DATABASE online_superstore;

-- Use the database
USE online_superstore;

-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(255),
    address VARCHAR(255),
    account_creation_date DATE,
    last_login_date DATE,
    account_status VARCHAR(255),
    total_spend DECIMAL(10,2),
    last_order_date DATE,
    average_order_value DECIMAL(10,2),
    subscription_start_date DATE,
    subscription_end_date DATE,
    subscription_status VARCHAR(255),
    age INT,
    gender VARCHAR(255),
    income INT,
    education VARCHAR(255)
);

-- Create the orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    order_date DATE,
    order_status VARCHAR(255),
    payment_type VARCHAR(255),
    shipping_date DATE,
    shipping_address VARCHAR(255),
    delivery_status VARCHAR(255),
    product_id INT,
    category VARCHAR(255),
    brand VARCHAR(255),
    order_total DECIMAL(10,2),
    review_rating INT,
    returned INT
);

-- Use the online_superstore database
USE online_superstore;
/* script that inserts random values into the "customers" and "orders" 
tables of the "online_superstore" database:*/

-- Customers table
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, address, account_creation_date, last_login_date, account_status, total_spend, last_order_date, average_order_value, subscription_start_date, subscription_end_date, subscription_status, age, gender, income, education)
VALUES
  (1, 'John', 'Doe', 'johndoe@example.com', '555-555-3245', '123 Main St', '2022-01-01', '2022-02-01', 'active', 100.00, '2022-01-15', 50.00, '2022-01-01', '2022-12-31', 'active', 25, 'male', 50000, 'college'),
  (2, 'Jane', 'Smith', 'janesmith@example.com', '555-555-5556', '456 Park Ave', '2022-01-02', '2022-03-01', 'inactive', 200.00, '2022-02-15', 100.00, '2022-01-01', '2022-06-30', 'inactive', 35, 'female', 75000, 'post-grad'),
  (3, 'Bob', 'Johnson', 'bobjohnson@example.com', '555-555-5557', '789 Elm St', '2022-01-03', '2022-04-01', 'active', 150.00, '2022-03-15', 75.00, '2022-01-01', '2022-09-30', 'active', 45, 'male', 100000, 'college'),
 (4, 'John', 'Snow', 'johndoe@email.com', '555-555-5895', '123 Main St', '2022-01-01', '2022-01-02', 'active', 100.00, '2022-01-03', 50.00, '2022-01-04', '2022-01-05', 'active', 30, 'male', 50000, 'college'),
  (5, 'Jane', 'Snow', 'janedoe@email.com', '555-585-5556', '456 Park Ave', '2022-01-01', '2022-01-02', 'active', 200.00, '2022-01-03', 75.00, '2022-01-04', '2022-01-05', 'active', 35, 'female', 60000, 'college'),
  (20, 'Janet', 'Smitherson', 'janesmith@email.com', '555-552-5576', '789 Elm St', '2022-01-01', '2022-01-02', 'active', 200.00, '2022-01-03', 75.00, '2022-01-04', '2022-01-05', 'active', 40, 'female', 70000, 'college'),
  (300, 'Rachel', 'Green', 'rachelgreen@example.com', '515-555-5888', '456 Park Ave', '2022-01-03', '2022-04-01', 'active', 150.00, '2022-03-15', 75.00, '2022-01-01', '2022-09-30', 'active', 45, 'female', 100000, 'college');


-- Orders table
INSERT INTO orders (order_id, customer_id, order_date, order_status, payment_type, shipping_date, shipping_address, delivery_status, product_id, category, brand, order_total, review_rating, returned)
VALUES
  (1, 1, '2022-01-05', 'completed', 'visa', '2022-01-06', '123 Main St', 'delivered', 123, 'Electronics', 'Apple', 200.00, 5, 0),
  (2, 2, '2022-01-07', 'cancelled', 'mastercard', '2022-01-08', '456 Park Ave', 'returned', 456, 'Clothing', 'Nike', 150.00, 3, 1),
  (3, 3, '2022-01-09', 'completed', 'amex', '2022-01-10', '789 Elm St', 'delivered', 685, 'Groceries', 'Spring Mix', 4.99, 5,0),
(4, 4, '2022-01-01', 'completed', 'credit card', '2022-01-02', '123 Main St', 'delivered', 1, 'electronics', 'Samsung', 100.00, 4, 0),
  (5, 5, '2022-01-03', 'completed', 'paypal', '2022-01-04', '456 Park Ave', 'delivered', 2, 'clothing', 'Nike', 50.00, 5, 0),
  (20, 20, '2022-01-20', 'completed', 'credit card', '2022-01-21', '789 Elm St', 'delivered', 20, 'books', 'Harper Collins', 20.00, 3, 0);







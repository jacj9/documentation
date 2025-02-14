-- Here is where I document my work on Data Definition Language (DDL) exercises from w3resource.

-- 1. Create a Table: Write a SQL query to create a table with specific columns and constraints.
CREATE TABLE songs (
songid INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
artist VARCHAR(50) NOT NULL,
date_release DATETIME NOT NULL
);

-- 2. Add a New Column: Write a SQL query to add a new column to an existing table.

ALTER TABLE employees
ADD COLUMN birthdate DATETIME NOT NULL,
ADD COLUMN hire_date DATETIME NOT NULL,
ADD COLUMN department VARCHAR(50)
ADD COLUMN salary INT;

ALTER TABLE customers
ADD COLUMN created_at DATETIME,
ADD COLUMN phone_number INT,
ADD COLUMN is_active BOOLEAN,
ADD COLUMN discount_rate DECIMAL;


-- 3. Modify a Column's Data Type: Write a SQL query to change the data type of an existing column in a table.
ALTER TABLE customers
MODIFY COLUMN phone_nuber SMALLINT;

ALTER TABLE employees
-- Modify from INT to DECIMAL(10,2)
MODIFY COLUMN salary DECIMAL(10,2), 
MODIFY COLUMN department TEXT,
MODIFY COLUMN birthday DATE; 


-- 4. Drop a column: Write a SQL query to remove a column from an existing table.
ALTER TABLE customers
DROP COLUMN is_active;

ALTER TABLE employees
DROP COLUMN department;


-- 5. Add a Unique Constraint: Write a SQL query to add a unique constraint to a column in an existing table.
-- The UNIQUE constraint ensures that all values in a column are different.

-- Add a unique constraint to the "Name" column to ensure no duplicate name
ALTER TABLE employees -- Specify the table to modify.
ADD CONSTRAINT UC_Name UNIQUE (Name); -- Ensure all names are unique.

-- Write a SQL query to add a unique constraint to the username column in the users table.
ALTER TABLE users
ADD CONSTRAINT UC_users UNIQUE (username);

-- Write a SQL query to ensure that the product_code column in the products table contains only unique values.
ALTER TABLE products
ADD CONSTRAINT UC_products UNIQUE (product_code);

-- Write a SQL query to add a unique constraint to the email_address column in the customers table.
ALTER TABLE customers
ADD CONSTRAINT UC_customers UNIQUE (email_address);

-- Write a SQL query to enforce uniqueness on the order_reference column in the orders table.
ALTER TABLE orders
ADD CONSTRAINT UC_order UNIQUE (order_reference);

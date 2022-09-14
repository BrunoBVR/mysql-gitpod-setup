CREATE DATABASE class3;
USE class3;

CREATE TABLE customers (
    customer_id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(10),
    address1 VARCHAR(50),
    address2 VARCHAR(50),
    city VARCHAR(50),
    province VARCHAR(50),
    code VARCHAR(15),
    country VARCHAR(50) NOT NULL,
    sales_rep_employee_number INT NOT NULL,
    credit_limit INT
);

--- INSERT INTO customers (first_name, last_name, city, country, sales_rep_employee_number)
---    VALUES '';

CREATE TABLE orders (
    order_number INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    fk_customer_id INT NOT NULL,
    order_date DATETIME,
    required_date DATETIME,
    shipped_date DATETIME,
    order_status INT,
    comments TEXT,
    FOREIGN KEY (fk_customer_id)
        REFERENCES customers(customer_id)
        ON DELETE CASCADE
);

--- On customers
INSERT INTO customers (first_name, last_name, city, country, sales_rep_employee_number)
    VALUES ('Bruno', 'Vieira', 'Calgary', 'Canada', '28');
INSERT INTO customers (first_name, last_name, city, country, sales_rep_employee_number)
    VALUES ('Peregrin', 'Took', 'The Shire', 'Andor', '40');
INSERT INTO customers (last_name, city, country, sales_rep_employee_number)
    VALUES ('Took', 'The Shire', 'Andor', '40');

--- On orders
INSERT INTO orders (fk_customer_id, order_date, required_date, order_status, comments)
    VALUES (1, CURDATE(), CAST("2022-09-30" AS DATE), 0, "Not sure what I bought, excited about it arriving!");

-- Adding Constraints
ALTER TABLE customers MODIFY first_name VARCHAR(50) NOT NULL;


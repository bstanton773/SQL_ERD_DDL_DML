-- Create customer table
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    date_created DATE DEFAULT CURRENT_DATE
);

SELECT * FROM customer;


-- Create Order Table
CREATE TABLE order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	total NUMERIC(8,2),
	customer_id INTEGER NOT NULL, -- Not null means that this column cannot be empty
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) 
-- FOREIGN KEY(column_in_domestic_table) REFERENCES foreign_table(column_in_foreign_table)
);

SELECT * FROM order_;


-- Create Inventory Table
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	vendor_id INTEGER NOT NULL,
	product_id INTEGER NOT NULL,
	order_id INTEGER,
	date_added DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY(order_id) REFERENCES order_(order_id)
);


-- Create Vendor Table
CREATE TABLE vendor(
	vendor_id SERIAL PRIMARY KEY,
	vendor_name VARCHAR(100),
	contact_number VARCHAR(15),
	email VARCHAR(100)
);


-- Alter Inventory table to add foreign key now that vendor table exists
ALTER TABLE inventory
ADD FOREIGN KEY(vendor_id) REFERENCES vendor(vendor_id);



-- Create Product Table
CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	prod_name VARCHAR(100),
	description VARCHAR(255),
	price NUMERIC(6,2),
	weight NUMERIC(6,2)
);

-- Add Foreign Key for product on Inventory
ALTER TABLE inventory
ADD FOREIGN KEY(product_id) REFERENCES product(product_id);


-- Alter column name
ALTER TABLE vendor
RENAME COLUMN email TO email_address;

SELECT column_name
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'vendor';


CREATE TABLE test();

DROP TABLE IF EXISTS test;


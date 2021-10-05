-- Add Data to Customer Table
INSERT INTO customer(
	first_name,
	last_name,
	address
) VALUES (
	'Brian',
	'Stanton',
	'222 W Ontario'
);

SELECT *
FROM customer;

UPDATE customer
SET address = '123 Real Street'
WHERE first_name = 'Brian';


-- Add multiple values to customer
INSERT INTO customer(
	first_name,
	last_name,
	address
) VALUES(
	'Brian',
	'Harrison',
	'123 Real St'
),(
	'Ripal',
	'Patel',
	'222 W Ontario'
);


INSERT INTO order_(
	total,
	customer_id
)VALUES(
	99.99,
	1
);

SELECT *
FROM order_



INSERT INTO order_(
	total,
	customer_id
)VALUES(
	199.99,
	5
);


DELETE FROM customer
WHERE address = '1600 W Pennsylvania';

SELECT *
FROM customer;


INSERT INTO customer(last_name, address, first_name)
VALUES ('Parks', '123 Fake St', 'Tatyana'),
('Hawkins', '555 Circle Drive', 'Derek'),
('Carter', '333 Hello World Ave', 'Joel');


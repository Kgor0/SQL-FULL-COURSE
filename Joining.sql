/* RETRIEVE ALL DATA FROM CUSTOMERS AND ORDERS
AS SEPERATE RESULTS */
SELECT * 
FROM customers;

SELECT *
FROM orders;

/* GET ALL CUSTOMERS ALONG WITH THEIR ORDERS, BUT ONLY
FOR CUSTOMERS WHO HAVE PLACED AN ORDER */

SELECT * 
FROM customers;

SELECT *
FROM orders;

SELECT
		c.id,
		c.first_name,
		o.order_id,
		o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;

/* GET ALL CUSTOMERS ALONG WITH THEIR ORDERS, INCLUDING
THOSE WITHOUT ORDERS */

SELECT * 
FROM customers;

SELECT *
FROM orders;

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;

/* GET ALL CUSTOMERS ALONG WITH THIER ORDERS, 
INCLUDING ORDERS WITHOUT MATCHING CUSTOMERS */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;

/* GET ALL CUSTOMERS ALONG WITH THEIR ORDERS
INCLUDING ORDERS WITHOUT MATCHING CUSTOMERS */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id; 

/* GET ALL CUSTOMERS AND ALL ORDERS EVEN IF THERE'S
NO MATCH */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id;

/* GET ALL CUSTOMERS WHO HAVEN'T PLACED ANY ORDER */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE  o.customer_id IS NULL;

/* GET ALL ORDERS WITHOUT MATCHING CUSTOMERS */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE  c.id IS NULL;

/* GET ALL ORDERS WITHOUT MATCHING CUSTOMERS USING 
LEFT JOIN */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE  c.id IS NULL;

/* FIND CUSTOMERS WITHOUT ORDERS 
AND ORDERS WITHOUT CUSTOMERS */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL OR c.id IS NULL;

/* GET CUSTOMERS ALONG WITH THIER ORDERS,
BUT ONLY FOR CUSTOMERS WHO HAVE PLACED AN ORDER
WITHOUT USING INNER JOIN */

SELECT 	c.id,
		c.first_name,
		o.order_id,
		o.sales 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;

/* GENERATE ALL POSSIBLE COMBINATIONS OF 
CUSTOMERS AND ORDERS */

SELECT * 
FROM customers
CROSS JOIN orders;
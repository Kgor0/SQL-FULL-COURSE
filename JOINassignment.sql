/* Task: using SalesDB, Retrieve a list of all orders, along
with the related customer, product, and employee details.
For each order, display:
Order ID, Customer's name, Product name, Sales, Price, Sales
person's name */

SELECT o.orderid,
	   o.sales,
	   c.firstname AS customerFirstName,
	   c.lastname AS customerLastName,
	   p.product AS productname,
	   p.price,
	   e.firstname AS employeeFirstName,
	   e.lastname AS employeeLastName
FROM sales.orders AS o
LEFT JOIN sales.customers AS c
ON o.customerid = c.customerid
LEFT JOIN sales.products AS p
ON o.productid = p.productid
LEFT JOIN sales.employees AS e
ON o.salespersonid = e.employeeid;

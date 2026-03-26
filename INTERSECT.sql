/* FIND EMPLOYEES WHO ARE ALSO CUSTOMERS */

SELECT 
firstname,
lastname
FROM sales.employees

INTERSECT 

SELECT 
firstname,
lastname
FROM sales.customers
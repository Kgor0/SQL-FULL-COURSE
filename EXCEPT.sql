/* FIND THE EMPLOYEES WHO ARE NOT CUSTOMERS AT THE SAME
TIME */

SELECT 
firstname,
lastname
FROM sales.employees

EXCEPT 

SELECT 
firstname,
lastname
FROM sales.customers
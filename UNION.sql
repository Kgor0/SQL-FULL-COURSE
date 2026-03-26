/* COMBINE THE DATA FROM EMPLOYEES AND CUSTOMERS INTO
ONE TABEL */

SELECT firstname,
	   lastname
FROM sales.employees

UNION

SELECT firstname,
       lastname
FROM sales.customers;

/* COMEBINE THE DATA FROM EMPLOYEES AND CUSTOMERS INTO
ONE TABLE, INCLUDING DU[LICATES */

SELECT firstname,
	   lastname
FROM sales.employees

UNION ALL

SELECT firstname,
       lastname
FROM sales.customers;
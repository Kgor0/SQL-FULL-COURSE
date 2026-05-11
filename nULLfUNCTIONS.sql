/*FIND THE AVG SCORES OF THE CUSTOMERS*/
SELECT
* 
FROM sales.customers;

SELECT
customerid,
score,
AVG(score) OVER ()/*window function*/,
AVG(COALESCE(score, 0)) OVER() AS avgscore
FROM sales.customers
GROUP BY customerid
ORDER BY customerid;

/*DISPLAY THE FULL NAME OF CUSTOMERS IN A SINGLE FIELD
BY MERGING THEIR FIRST AND LAST NAMES,
AND ADD 10 BONUS POINTS TO EACH CUSTOMER SCORE*/

SELECT 
customerid,
firstname,
lastname,
CONCAT(firstname, COALESCE(lastname, '')) AS fullname,
score,
COALESCE(score, 0) + 10 AS scorewithbonus
FROM sales.customers;

/*SORT THE CUSTOMERS FROM THE LOWEST TO THE HIGHEST SCORES,
WITH NULLS APPEARING LAST*/

SELECT 
customerid,
firstname,
lastname,
score,
CASE WHEN score IS NULL THEN 1 ELSE 0 END 
FROM sales.customers
ORDER BY CASE WHEN score IS NULL THEN 1 ELSE 0 END, score;

/*FIND THEE SALES PRICE FOR EACH ORDER BY DIVIDING SALES
BY QUANTITY*/

SELECT * FROM sales.orders;

SELECT
orderid,
sales, 
quantity, 
sales / NULLIF(quantity, 0) AS salesprice
FROM sales.orders;

/*IDENTIFY THE CUSTOMERS WHO HAVE NO SCORES*/
SELECT *
FROM sales.customers
WHERE score IS NULL;

/*IDENTIFY THE CUSTOMERS WHO HAVE SCORES*/
SELECT *
FROM sales.customers
WHERE score IS NOT NULL;

/*LIST ALL DETAILS FOR CUSTOMERS WHO HAVE NOT PLACED
ANY ORDERS */
SELECT * FROM sales.customers;

SELECT * FROM sales.orders;

SELECT *
FROM sales.customers AS c
LEFT JOIN sales.orders AS o
ON c.customerid = o.customerid
WHERE o.orderid IS NULL;

/*CREATE REPORT SHOWING TOTAL SALES FOR EACH OF THE 
FOLLOWING CATEGORIES:
HIGH(SALES OVER 50), MEDIUM (SALES 21-50), AND LOW 
(SALES 20 OR LESS)
SORT THE CATEGORIES FROM HIGHEST TO LOWEST */

SELECT 
category,
SUM(sales) AS totalsales
FROM(
	SELECT
	orderid,
	sales,
	CASE
		WHEN sales > 50 THEN 'high'
		WHEN sales > 20 THEN 'medium'
		ELSE 'low'
	END category
	FROM sales.orders
)t
GROUP BY category
ORDER BY totalsales DESC;

/* RETRIEVE EMPLOYEE DETAILS WITH GENDER DISPLAYED AS
FULL TEXT */

SELECT * FROM sales.employees

SELECT *,
CASE 
	WHEN gender = 'M' THEN 'male'
	WHEN gender = 'F' THEN 'female'
	ELSE 'not available'
END genderfulltext
FROM sales.employees;

/*RETRIVE CUSTOMER DETAILS WITH ABBREVIATED COUNTRY CODE*/
SELECT 
	customerid,
	firstname,
	lastname,
	country,
	CASE
		WHEN country = 'Germany' THEN 'DE'
		WHEN country = 'USA' THEN 'US'
		ELSE 'n/a'
	END countryabbr

		CASE Country
		WHEN 'Germany' THEN 'DE'
		WHEN 'USA' THEN 'US'
		ELSE 'n/a'
	END countryabbr2

FROM sales.customers;

/* FIND THE AVERAGE SCORES OF CUSTOMERS AND TREAT NULLS
AS 0
   ADDITIIONALLY PROVIDE DETAILS SUCH AS CUSTID AND LASTNAME*/

SELECT 
   customerid,
   lastname,
   score,
   AVG(COALESCE(score, 0)) OVER() AS avgscore
FROM sales.customers
GROUP BY customerid;

SELECT 
   customerid,
   lastname,
   score,
CASE
   	WHEN score IS NULL THEN 0
	ELSE score
END scoreclean,

AVG(CASE
   		WHEN score IS NULL THEN 0
		ELSE score
	END) OVER() AS avgcustomerclean,
	
AVG(score) OVER() AVGCUSTOMER
FROM sales.customers;

/*COUNT HOW MANY TIMES EACH CUSTOMER HAS MADE AN ORDER
WITH SALES GREATER THAN 30*/

SELECT * FROM sales.orders;

SELECT 
	customerid,
	SUM(CASE 
		WHEN sales > 30 THEN 1
		ELSE 0
	END) totalorders
FROM sales.orders
GROUP BY customerid;
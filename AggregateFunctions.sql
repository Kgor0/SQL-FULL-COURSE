/* FIND THE TOTAL NUMBERS OF ORDERS */
/* FIND THE TOTAL SALES OF ALL ORDERS */
/* FIND THE AVERAGE SALES OF ALL ORDERS */
/* FIND THE HIGHEST SALES OF ALL ORDERS */
/* FIND THE LOWEST SALES OF ALL ORDERS */

SELECT * FROM orders;

SELECT COUNT(*) AS totalorders,
	   SUM(sales) AS totalsales,
	   AVG(sales) AS avgsales,
	   MAX(sales) AS highestsales,
	   MIN(sales) AS lowestsales
FROM orders;

SELECT 
	   customer_id,
	   COUNT(*) AS totalorders,
	   SUM(sales) AS totalsales,
	   AVG(sales) AS avgsales,
	   MAX(sales) AS highestsales,
	   MIN(sales) AS lowestsales
FROM orders
GROUP BY customer_id;
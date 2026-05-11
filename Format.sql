SELECT 
orderid,
creationtime,
TO_CHAR(creationtime, 'DD-MM-YYYY') AS EURO_FORMAT,
TO_CHAR(creationtime, 'MM-DD-YYYY') AS USA_FORMAT,
TO_CHAR(creationtime, 'DD') AS day,
TO_CHAR(creationtime, 'day') AS Fullday,
TO_CHAR(creationtime, 'MM') AS M,
TO_CHAR(creationtime, 'Mon') AS Mon,
TO_CHAR(creationtime, 'Month') AS Month
FROM sales.orders;

/* SHOW CREATIONTIME USING THE FOLLOWING FORMAT:
   DAY WED JAN Q1 2025 12:34:56 PM */

SELECT
orderid,
creationtime,
TO_CHAR(creationtime, 'DD dy mon YYYY HH:MM:SS PM') 
AS customformat
FROM sales.orders;

/* DATA AGG */
SELECT 
TO_CHAR(orderdate, 'Mon YY') AS orderdate,
COUNT(*)
FROM sales.orders
GROUP BY TO_CHAR(orderdate, 'Mon YY')
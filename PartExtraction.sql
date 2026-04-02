SELECT 
orderid,
orderdate,
shipdate,
creationtime
FROM sales.orders;

SELECT 
orderid,
creationtime,
'2025-08-20', hardcoded
FROM sales.orders;

/* CURRENT_TIMESTAMP */
SELECT 
orderid,
creationtime,
CURRENT_TIMESTAMP
FROM sales.orders;

/*EXTRACTION*/
SELECT 
orderid,
creationtime,

/*DATE_TRUNC*/
DATE_TRUNC('year', creationtime) AS YEAR_DT,
DATE_TRUNC('day', creationtime) AS DAY_DT,
DATE_TRUNC('minute', creationtime) AS MINUTE_DT,

/*DATENAME*/
TO_CHAR(creationtime, 'month') AS MONTH_DN,
TO_CHAR(creationtime, 'day') AS WEEKDAY_DN,

/*DATE_PART*/
DATE_PART('YEAR', creationtime) AS YEAR_DP,
DATE_PART('MONTH', creationtime) AS MONTH_DP,
DATE_PART('DAY', creationtime) AS DAY_DP,
DATE_PART('HOUR', creationtime) AS HOUR_DP,
DATE_PART('QUARTER', creationtime) AS QUARTER_DP,
DATE_PART('WEEK', creationtime) AS WEEK_DP,

EXTRACT(YEAR FROM creationtime) AS YEAR,
EXTRACT(MONTH FROM creationtime) AS MONTH,
EXTRACT(DAY FROM creationtime) AS DAY

FROM sales.orders;

/*END OF MONTH*/
SELECT 
orderid,
creationtime,
(DATE_TRUNC('month', creationtime::date) + interval
'1 month - 1 day')::date AS EndOfMonth,
CAST(DATE_TRUNC('month', creationtime) AS DATE) AS StartOfMonth
FROM sales.orders;

/* HOW MANY ORDERS WERE PLACED EACH YEAR? */
SELECT 
EXTRACT(YEAR FROM orderdate),
COUNT(*) AS nrOfOrders
FROM sales.orders
GROUP BY EXTRACT(YEAR FROM orderdate);

/* HOW MANY ORDERS WERE PLACED EACH MONTH? */
SELECT 
TO_CHAR(orderdate, 'month') AS orderdate ,
COUNT(*) AS nrOfOrders
FROM sales.orders
GROUP BY TO_CHAR(orderdate, 'month');

/* SHOW ALL ORDERS PLACED DURING MONTH OF FEBRUARY */
SELECT * 
FROM sales.orders
WHERE EXTRACT(MONTH FROM orderdate) = 2;
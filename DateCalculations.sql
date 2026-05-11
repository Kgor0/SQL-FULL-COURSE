/*Years*/
SELECT 
orderid,
orderdate,
orderdate + INTERVAL '2 years' AS TwoYearsLater
FROM sales.orders;

/*Months*/
SELECT 
orderid,
orderdate,
orderdate + INTERVAL '3 months' AS ThreeMonthsLater
FROM sales.orders;

/*Days*/
SELECT 
orderid,
orderdate,
orderdate - INTERVAL '10 days' AS TenDaysBefore
FROM sales.orders;

/*'2024-01-01'::date + interval 'x D/M/Y'*/

/*DATEDIFF*/
/*CALCULATE THE AGE OF EMPLOYEES*/

SELECT
employeeid,
firstname,
lastname,
birthdate,
AGE('2026-04-07', birthdate) AS age
FROM sales.employees;

/*FIND THE AVERAGE SHIPPING DURATION IN DAYS FOR EACH MONTH*/

/*FIND THE NUMBER OF DAYS BETWEEN EACH ORDER AND THE 
PREVIOUS ORDER */

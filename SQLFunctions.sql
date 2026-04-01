/* CONCATENATE FIRST NAME AND COUNTRY INTO ONE COLUMN */
SELECT * FROM customers;

SELECT first_name,
	   country,
CONCAT(first_name, ' ', country) AS name_country
FROM customers;

/*CONVERT THE FIRST NAME TO LOWERCASE */
SELECT * FROM customers;

SELECT first_name
FROM customers;

SELECT first_name,
LOWER(first_name) AS lower_names
FROM customers;

/*CONVERT THE FIRST NAME TO UPPERCASE */
SELECT * FROM customers;

SELECT first_name
FROM customers;

SELECT first_name,
UPPER(first_name) AS upper_names
FROM customers;

/* FIND CUSTOMERS WHOSE FIRST NAME CONTAINS LEADING
OR TRAILING OR LEADING SPACES */
SELECT first_name
FROM customers;

SELECT first_name
FROM customers
WHERE first_name != TRIM(first_name)

SELECT first_name,
TRIM(first_name) AS trim_names
FROM customers;

/*REMOVE DASHES (-) FROM A PHONE NUMBER */

SELECT '123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '') AS clean_phone;

/* REPLACE FILE EXTENCE FROM txt to csv */

SELECT 
'report.txt' AS old_filename,
REPLACE('report.txt', '.txt', '.csv') AS new_filename

/* CALCULATE THE LENGTH OF EACH CUSTOMER'S FIRST NAME */
SELECT first_name,
	   LENGTH(first_name) AS len_name
FROM customers

/* RETRIEVE THE FIRST TWO CHARACTERS OF EACH FIRST NAME */

SELECT first_name,
LEFT(TRIM(first_name), 2) AS left_first_name
FROM customers;

/* RETRIEVE THE LAST TWO CHARACTERS OF EACH FIRST NAME */

SELECT first_name,
RIGHT(TRIM(first_name), 2) AS last_first_name
FROM customers;

/* RETRIEVE A LIST OF CUSTOMERS' FIRST NAMES AFTER REMOVING
THE FIRST CHARACTER */

SELECT first_name,
	   SUBSTRING(TRIM(first_name), 2, LENGTH(first_name))
	   AS sub_name
FROM customers;
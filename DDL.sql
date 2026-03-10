/* CREATE A NEW TABLE CALLED PERSONS
WITH COLUMNS: id, person_name, birth_date, and phone */

CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)

/* ADD A NEW COLUMN CALLED EMAIL TO THE PERSONS TABLE */

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

SELECT * FROM persons;

/* REMOVE THE COLUMN PHONE FROM TH PERSONS TABLE */
ALTER TABLE persons
DROP phone;

SELECT * FROM persons;

/* DELETE THE TABLE PERSONS FROM THE DATABASE */

DROP TABLE persons;

/* INSERT DATA INTO CUSTOMERS */

INSERT INTO customers(id, first_name, country, score)
VALUES
	(6, 'Anna', 'USA', NULL),
	(7, 'Sam', 'NULL', 100),
	
INSERT INTO customers(id, first_name, country, score)
Values
	(8, 'USA', 'MAX', NULL),
	(9, 'Andreas', 'Germany', NULL),
	(10, 'Sahra')
	
/* COPY DATA FROM CUSTOMERS TABLE INTO PERSONS */

SELECT * FROM customers;

INSERT INTO persons(id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers;

SELECT * FROM persons;

/* CHANGE THE SCORE OF CUSTOMER WITH ID 6 TO 0 */

SELECT * FROM customers;

UPDATE customers(
	SET score 6 = 0
)
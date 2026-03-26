/* ORDERS DATA ARE STORED IN SEPERATE TABLES (ORDERS AND ORDERS
ARCHIVE) 
COMBINE ALL ORDERS DATA INTO ONE REPORT WITHOUT DUPLICATES */

SELECT 'Orders' AS SourceTable,
	   o.orderid,
	   o.productid,
	   o.customerid,
	   o.salespersonid,
	   o.orderdate,
	   o.shipdate,
	   o.orderstatus,
	   o.shipaddress,
	   o.billaddress,
	   o.quantity,
	   o.sales,
	   o.creationtime
FROM sales.orders AS o

UNION

SELECT 'OrdersArchive' AS sourcetable,
       oa.orderid,
	   oa.productid,
	   oa.customerid,
	   oa.salespersonid,
	   oa.orderdate,
	   oa.shipdate,
	   oa.orderstatus,
	   oa.shipaddress,
	   oa.billaddress,
	   oa.quantity,
	   oa.sales,
	   oa.creationtime 
FROM sales.ordersarchive AS oa
ORDER BY orderid;
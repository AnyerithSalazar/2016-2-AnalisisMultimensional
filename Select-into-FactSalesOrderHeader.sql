SELECT 
       SalesOrderID, OrderDate, DueDate, 
	   ShipDate, Status, CustomerID, SalesPersonID, 
	   OnlineOrderFlag, ShipToAddressID, SubTotal, 
	   TaxAmt, Freight, TotalDue
INTO            MyDb.dbo.FactSalesOrderHeader
FROM            Sales.SalesOrderHeader
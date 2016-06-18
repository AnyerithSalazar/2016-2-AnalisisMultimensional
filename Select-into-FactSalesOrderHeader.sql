use AdventureWorks2014
INSERT INTO            MyDb.dbo.FactSalesOrderHeader
SELECT 
       SalesOrderID, OrderDate, DueDate, 
	   ShipDate, Status, CustomerID, SalesPersonID, 
	   OnlineOrderFlag, ShipToAddressID, SubTotal, 
	   TaxAmt, Freight, TotalDue, null
FROM            Sales.SalesOrderHeader

use MyDb
begin tran
update FactSalesOrderHeader
set IdEstratoTotalDue = (
select e.IdEstrato from
 DimEstratificacion as e
where e.TipoCampo = 1 -- TotalDue
and FactSalesOrderHeader.TotalDue between
	e.ValorMinimo and e.ValorMaximo
)
where IdEstratoTotalDue is null
and SalesOrderID <= 44000;
commit;

select * from FactSalesOrderHeader
where SalesOrderID <= 44000;

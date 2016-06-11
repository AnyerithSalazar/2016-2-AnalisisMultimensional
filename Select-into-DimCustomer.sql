SELECT        
		p.FirstName, p.LastName, c.CustomerID, p.PersonType, s.Name AS StoreName
INTO 
	MyDb.dbo.DimCustomer
FROM            
	Sales.Customer AS c LEFT OUTER JOIN
	Person.Person AS p ON c.PersonID = p.BusinessEntityID LEFT OUTER JOIN
	Sales.Store AS s ON c.StoreID = s.BusinessEntityID


select * from sales.Customer

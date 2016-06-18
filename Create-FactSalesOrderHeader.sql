USE [MyDb]
GO

--select OBJECT_ID('FactSalesOrderHeader','U') 

if OBJECT_ID('FactSalesOrderHeader','U') is not null
/****** Object:  Table [dbo].[FactSalesOrderHeader]    Script Date: 6/10/2016 7:39:02 PM ******/
	DROP TABLE [dbo].[FactSalesOrderHeader]
GO

/****** Object:  Table [dbo].[FactSalesOrderHeader]    Script Date: 6/10/2016 7:39:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactSalesOrderHeader](
	[SalesOrderID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[Status] [tinyint] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[SalesPersonID] [int] NULL,
	[OnlineOrderFlag] [bit] NOT NULL,
	[ShipToAddressID] [int] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[TaxAmt] [money] NOT NULL,
	[Freight] [money] NOT NULL,
	[TotalDue] [money] NOT NULL,
	[IdEstratoTotalDue] [int] NULL
) ON [PRIMARY]

GO



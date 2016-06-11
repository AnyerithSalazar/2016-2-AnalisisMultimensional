USE [MyDb]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 6/10/2016 8:08:49 PM ******/
if OBJECT_ID('DimCustomer','U') is not null
	DROP TABLE [dbo].[DimCustomer]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 6/10/2016 8:08:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[CustomerID] [int] NOT NULL,
	[PersonType] [nchar](2) NULL,
	[StoreName] [nvarchar](50) NULL
) ON [PRIMARY]

GO



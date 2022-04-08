CREATE TABLE dbo.Person(
	BusinessEntityID int NOT NULL,
	PersonType nchar(2) NOT NULL,
	Title nvarchar(8) NULL,
	FirstName varchar(50) NOT NULL,
	MiddleName varchar(50) NULL,
	LastName varchar(50) NOT NULL,
	Suffix nvarchar(10) NULL,
	EmailPromotion int NOT NULL,
	rowguid uniqueidentifier NOT NULL,
	ModifiedDate datetime NOT NULL,
 CONSTRAINT PK_Person PRIMARY KEY CLUSTERED 
(
	BusinessEntityID ASC
))
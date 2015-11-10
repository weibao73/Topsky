CREATE TABLE [dbo].[Country]
(
	[CountryId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Code] NCHAR(2) NOT NULL, 
    [Name] NCHAR(30) NOT NULL
)

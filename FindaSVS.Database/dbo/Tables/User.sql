CREATE TABLE [dbo].[User]
(
	[UserId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [FirstName] NVARCHAR(100) NOT NULL, 
    [LastName] NVARCHAR(100) NOT NULL, 
    [Email] NVARCHAR(100) NOT NULL, 
	[Password] NVARCHAR(100) NOT NULL,
    [Address] NVARCHAR(200) NULL, 
    [PostalCode] NVARCHAR(50) NULL, 
    [City] NVARCHAR(50) NULL, 
    [Country] NVARCHAR(50) NULL
)

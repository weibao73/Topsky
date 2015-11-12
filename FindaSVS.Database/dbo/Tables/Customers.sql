CREATE TABLE [dbo].[Customers] (
    [CustomerId]      INT            IDENTITY (1, 1) NOT NULL,
    [UserId]          INT            NOT NULL,
    [FirstName]       NVARCHAR (50)  NOT NULL,
    [LastName]        NVARCHAR (50)  NOT NULL,
    [HomePhoneNumber] NVARCHAR (20)  NULL,
    [CellPhoneNumber] NVARCHAR (50)  NULL,
    [Address]         NVARCHAR (200) NOT NULL,
    [City]            NVARCHAR (50)  NOT NULL,
    [Province]        NVARCHAR (50)  NOT NULL,
    [Country]         NVARCHAR (50)  NOT NULL,
    [PostalCode]      NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [FK_Customers_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);




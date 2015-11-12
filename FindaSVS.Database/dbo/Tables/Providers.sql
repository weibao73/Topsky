CREATE TABLE [dbo].[Providers] (
    [ProviderId]        INT            IDENTITY (1, 1) NOT NULL,
    [UserId]            INT            NOT NULL,
    [CompanyName]       NVARCHAR (100) NULL,
    [OfficePhoneNumber] NVARCHAR (50)  NULL,
    [CellPhoneNumber]   NVARCHAR (50)  NULL,
    [Address]           NVARCHAR (200) NOT NULL,
    [City]              NVARCHAR (50)  NOT NULL,
    [Province]          NVARCHAR (50)  NOT NULL,
    [Country]           NVARCHAR (50)  NOT NULL,
    [PostalCode]        NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED ([ProviderId] ASC),
    CONSTRAINT [FK_Providers_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);




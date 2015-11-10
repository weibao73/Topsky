CREATE TABLE [dbo].[Services] (
    [ServiceId]        INT            IDENTITY (1, 1) NOT NULL,
    [ServiceCatalogId] INT            NULL,
    [Name]             NVARCHAR (50)  NULL,
    [Description]      NVARCHAR (100) NULL,
    CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED ([ServiceId] ASC),
    CONSTRAINT [FK_Services_ServiceCatalogs] FOREIGN KEY ([ServiceCatalogId]) REFERENCES [dbo].[ServiceCatalogs] ([ServiceCatalogId])
);


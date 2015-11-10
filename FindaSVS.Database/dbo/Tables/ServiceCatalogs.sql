CREATE TABLE [dbo].[ServiceCatalogs] (
    [ServiceCatalogId] INT            IDENTITY (1, 1) NOT NULL,
    [ParentId]         INT            NULL,
    [Name]             NVARCHAR (50)  NULL,
    [Description]      NVARCHAR (100) NULL,
    CONSTRAINT [PK_ServiceCatalogs] PRIMARY KEY CLUSTERED ([ServiceCatalogId] ASC),
    CONSTRAINT [FK_ServiceCatalogs_ServiceCatalogs] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[ServiceCatalogs] ([ServiceCatalogId])
);


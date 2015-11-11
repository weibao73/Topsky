CREATE TABLE [dbo].[Messages] (
    [MessageId]       INT            IDENTITY (1, 1) NOT NULL,
    [ParentId]        INT            NULL,
    [CustomerId]      INT            NULL,
    [ProviderId]      INT            NULL,
    [MessageContent]  NVARCHAR (200) NULL,
    [MessageDateTime] DATETIME       NULL,
    CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED ([MessageId] ASC),
    CONSTRAINT [FK_Messages_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]),
    CONSTRAINT [FK_Messages_Messages] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Messages] ([MessageId]),
    CONSTRAINT [FK_Messages_Providers] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Providers] ([ProviderId])
);




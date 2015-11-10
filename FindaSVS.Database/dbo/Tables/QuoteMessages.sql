CREATE TABLE [dbo].[QuoteMessages] (
    [QuoteMessageId]  INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]      INT            NULL,
    [ProviderId]      INT            NULL,
    [IsInbound]       BIT            NULL,
    [MessageContent]  NVARCHAR (200) NULL,
    [MessageDateTime] DATETIME       NULL,
    CONSTRAINT [PK_QuoteMessages] PRIMARY KEY CLUSTERED ([QuoteMessageId] ASC),
    CONSTRAINT [FK_QuoteMessages_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]),
    CONSTRAINT [FK_QuoteMessages_Providers] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Providers] ([ProviderId])
);


CREATE TABLE [dbo].[QuoteRequestMessages] (
    [QuoteRequestMessageId] INT            IDENTITY (1, 1) NOT NULL,
    [QuoteQuestId]          INT            NOT NULL,
    [CustomerId]            INT            NOT NULL,
    [ProviderId]            INT            NOT NULL,
    [IsInbound]             BIT            NOT NULL,
    [MessageContent]        NVARCHAR (200) NOT NULL,
    [MessageDateTime]       DATETIME       NOT NULL,
    CONSTRAINT [PK_QuoteMessages] PRIMARY KEY CLUSTERED ([QuoteRequestMessageId] ASC),
    CONSTRAINT [FK_QuoteRequestMessages_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]),
    CONSTRAINT [FK_QuoteRequestMessages_Providers] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Providers] ([ProviderId]),
    CONSTRAINT [FK_QuoteRequestMessages_QuoteRequests] FOREIGN KEY ([QuoteQuestId]) REFERENCES [dbo].[QuoteRequests] ([QuoteQuestId])
);


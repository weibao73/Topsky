CREATE TABLE [dbo].[QuoteRequests] (
    [QuoteQuestId]  INT        IDENTITY (1, 1) NOT NULL,
    [CustomerId]    INT        NOT NULL,
    [ServiceId]     INT        NOT NULL,
    [QuoteDateTime] DATETIME   NOT NULL,
    [Status]        TINYINT    NOT NULL,
    [Description]   NCHAR (10) NULL,
    CONSTRAINT [PK_Quotes] PRIMARY KEY CLUSTERED ([QuoteQuestId] ASC),
    CONSTRAINT [FK_QuoteRequests_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]),
    CONSTRAINT [FK_QuoteRequests_Services] FOREIGN KEY ([ServiceId]) REFERENCES [dbo].[Services] ([ServiceId])
);


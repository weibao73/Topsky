CREATE TABLE [dbo].[Orders] (
    [OrderId]          INT             IDENTITY (1, 1) NOT NULL,
    [QuoteId]          INT             NOT NULL,
    [CustomerId]       INT             NOT NULL,
    [ProviderId]       INT             NOT NULL,
    [IsFixedRate]      BIT             NOT NULL,
    [IsHourlyRate]     BIT             NOT NULL,
    [EstimatedRate]    DECIMAL (18, 2) NOT NULL,
    [EstimatedHours]   DECIMAL (18, 2) NOT NULL,
    [Description]      NVARCHAR (500)  NULL,
    [OrderDateTime]    DATETIME        NOT NULL,
    [ScheduleDateTime] DATETIME        NOT NULL,
    [Status]           TINYINT         NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderId] ASC),
    CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]),
    CONSTRAINT [FK_Orders_Providers] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Providers] ([ProviderId]),
    CONSTRAINT [FK_Orders_Quotes] FOREIGN KEY ([QuoteId]) REFERENCES [dbo].[Quotes] ([QuoteId])
);




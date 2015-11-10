CREATE TABLE [dbo].[QuoteResponses] (
    [QuoteResponseId]  INT             IDENTITY (1, 1) NOT NULL,
    [QuoteId]          INT             NOT NULL,
    [ProviderId]       INT             NOT NULL,
    [IsFixedRate]      BIT             NOT NULL,
    [IsHourlyRate]     BIT             NOT NULL,
    [FixedRate]        DECIMAL (18, 2) NULL,
    [HourlyRate]       DECIMAL (18, 2) NULL,
    [EstimatedRate]    DECIMAL (18, 2) NULL,
    [EstimatedHours]   DECIMAL (18, 1) NULL,
    [RequestDateTime]  DATETIME        NOT NULL,
    [ResponseDateTime] DATETIME        NULL,
    [Decription]       NVARCHAR (200)  NULL,
    [Status]           TINYINT         NOT NULL,
    CONSTRAINT [PK_QuoteResponses] PRIMARY KEY CLUSTERED ([QuoteResponseId] ASC),
    CONSTRAINT [FK_QuoteResponses_Providers] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Providers] ([ProviderId]),
    CONSTRAINT [FK_QuoteResponses_Quotes] FOREIGN KEY ([QuoteId]) REFERENCES [dbo].[Quotes] ([QuoteId])
);


CREATE TABLE [dbo].[QuoteUploads] (
    [QuoteUploadId]  INT            IDENTITY (1, 1) NOT NULL,
    [QuoteId]        INT            NOT NULL,
    [FilePath]       NVARCHAR (500) NOT NULL,
    [Decription]     NVARCHAR (100) NULL,
    [UploadDateTime] DATETIME       NOT NULL,
    CONSTRAINT [PK_QuoteUploads] PRIMARY KEY CLUSTERED ([QuoteUploadId] ASC),
    CONSTRAINT [FK_QuoteUploads_Quotes] FOREIGN KEY ([QuoteId]) REFERENCES [dbo].[Quotes] ([QuoteId])
);


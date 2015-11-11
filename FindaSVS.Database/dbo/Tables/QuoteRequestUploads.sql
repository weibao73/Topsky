CREATE TABLE [dbo].[QuoteRequestUploads] (
    [QuoteRequestUploadId] INT            IDENTITY (1, 1) NOT NULL,
    [QuoteRequestId]       INT            NOT NULL,
    [FilePath]             NVARCHAR (500) NOT NULL,
    [Decription]           NVARCHAR (100) NULL,
    [UploadDateTime]       DATETIME       NOT NULL,
    CONSTRAINT [PK_QuoteUploads] PRIMARY KEY CLUSTERED ([QuoteRequestUploadId] ASC),
    CONSTRAINT [FK_QuoteRequestUploads_QuoteRequests] FOREIGN KEY ([QuoteRequestId]) REFERENCES [dbo].[QuoteRequests] ([QuoteQuestId])
);


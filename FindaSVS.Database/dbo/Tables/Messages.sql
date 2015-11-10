CREATE TABLE [dbo].[Messages] (
    [MessageId]       INT            IDENTITY (1, 1) NOT NULL,
    [ParentId]        INT            NULL,
    [CustomerId]      INT            NULL,
    [ProviderId]      INT            NULL,
    [MessageContent]  NVARCHAR (200) NULL,
    [MessageDateTime] DATETIME       NULL,
    CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED ([MessageId] ASC)
);


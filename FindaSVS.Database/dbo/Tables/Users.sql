CREATE TABLE [dbo].[Users] (
    [UserId]           INT            IDENTITY (1, 1) NOT NULL,
    [Email]            NVARCHAR (100) NOT NULL,
    [Password]         NVARCHAR (100) NOT NULL,
    [RegisterDateTime] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);


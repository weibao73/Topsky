CREATE TABLE [dbo].[Jobs] (
    [JobId]             INT             NOT NULL,
    [OrderId]           INT             NOT NULL,
    [ScheduleId]        INT             NOT NULL,
    [IsReviewed]        BIT             NOT NULL,
    [IsFixedRate]       BIT             NOT NULL,
    [IsHourlyRate]      BIT             NOT NULL,
    [ActualRate]        DECIMAL (18, 2) NOT NULL,
    [ActualHours]       DECIMAL (18)    NOT NULL,
    [PartsRate]         DECIMAL (18, 2) NULL,
    [Description]       NVARCHAR (200)  NULL,
    [CompletedDateTime] DATETIME        NOT NULL,
    [Status]            TINYINT         NOT NULL,
    CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED ([JobId] ASC),
    CONSTRAINT [FK_Jobs_Orders] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]),
    CONSTRAINT [FK_Jobs_Schedules] FOREIGN KEY ([ScheduleId]) REFERENCES [dbo].[Schedules] ([ScheduleId])
);


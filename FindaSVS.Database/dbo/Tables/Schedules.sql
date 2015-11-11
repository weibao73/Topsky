CREATE TABLE [dbo].[Schedules] (
    [ScheduleId]    INT            NOT NULL,
    [ProviderId]    INT            NOT NULL,
    [JobId]         INT            NOT NULL,
    [Title]         NVARCHAR (20)  NULL,
    [Location]      NVARCHAR (200) NULL,
    [StartDateTime] DATETIME       NOT NULL,
    [EndDateTime]   DATETIME       NOT NULL,
    [Status]        TINYINT        NOT NULL,
    CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED ([ScheduleId] ASC),
    CONSTRAINT [FK_Schedules_Providers] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Providers] ([ProviderId])
);




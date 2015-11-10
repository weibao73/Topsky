CREATE TABLE [dbo].[ProviderServices] (
    [ProviderServiceId]  INT             IDENTITY (1, 1) NOT NULL,
    [ServiceId]          INT             NOT NULL,
    [ProviderId]         INT             NOT NULL,
    [IsFixedRate]        BIT             NOT NULL,
    [IsHourlyRate]       BIT             NOT NULL,
    [IsPartsNeeded]      BIT             NOT NULL,
    [IsHomeVisitAllowed] BIT             NOT NULL,
    [FixedRate]          DECIMAL (18, 2) NULL,
    [HourlyRate]         DECIMAL (18, 2) NULL,
    [HomeVisitRate]      DECIMAL (18, 2) NULL,
    [Description]        NVARCHAR (200)  NULL,
    CONSTRAINT [PK_ProviderServices] PRIMARY KEY CLUSTERED ([ProviderServiceId] ASC)
);


CREATE TABLE [dbo].[Person] (
    [Id]         INT        NOT NULL,
    [Occupation] NCHAR (50) NULL,
    [Gender]     NCHAR (2)  NULL,
    [City]       NCHAR (50) NULL,
    [Age]        INT        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
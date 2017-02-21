CREATE TABLE [dbo].[Table] (
    [Id]           INT         NOT NULL,
    [Title]        NCHAR (50)  NOT NULL,
    [Genre]        NCHAR (50)  NULL,
    [Release Date] DATETIME    NULL,
    [IMDB Url]     NCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
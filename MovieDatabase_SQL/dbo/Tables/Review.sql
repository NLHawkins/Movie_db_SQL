CREATE TABLE [dbo].[Review] (
    [Id]     INT NOT NULL,
    [Person] INT NOT NULL,
    [Movie]  INT NOT NULL,
    [Rating] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Review_Person] FOREIGN KEY (Person) REFERENCES Person(Id), 
    CONSTRAINT [FK_Review_Movie] FOREIGN KEY (Movie) REFERENCES Movie(Id)
);
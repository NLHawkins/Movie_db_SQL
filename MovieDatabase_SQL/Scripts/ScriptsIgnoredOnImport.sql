
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;
GO

SET NUMERIC_ROUNDABORT OFF;
GO

IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END
GO

USE [$(DatabaseName)];
GO

IF (SELECT OBJECT_ID('tempdb..#tmpErrors')) IS NOT NULL DROP TABLE #tmpErrors
GO

CREATE TABLE #tmpErrors (Error int)
GO

SET XACT_ABORT ON
GO

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO

BEGIN TRANSACTION
GO

PRINT N'Creating [dbo].[Table]...';
GO

IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END
GO

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END
GO

IF EXISTS (SELECT * FROM #tmpErrors) ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT>0 BEGIN
PRINT N'The transacted portion of the database update succeeded.'
COMMIT TRANSACTION
END
ELSE PRINT N'The transacted portion of the database update failed.'
GO

DROP TABLE #tmpErrors
GO

PRINT N'Update complete.';
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;
GO

SET NUMERIC_ROUNDABORT OFF;
GO

IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END
GO

USE [$(DatabaseName)];
GO

IF (SELECT OBJECT_ID('tempdb..#tmpErrors')) IS NOT NULL DROP TABLE #tmpErrors
GO

CREATE TABLE #tmpErrors (Error int)
GO

SET XACT_ABORT ON
GO

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO

BEGIN TRANSACTION
GO

PRINT N'Creating [dbo].[Person]...';
GO

IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END
GO

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END
GO

IF EXISTS (SELECT * FROM #tmpErrors) ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT>0 BEGIN
PRINT N'The transacted portion of the database update succeeded.'
COMMIT TRANSACTION
END
ELSE PRINT N'The transacted portion of the database update failed.'
GO

DROP TABLE #tmpErrors
GO

PRINT N'Update complete.';
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;
GO

SET NUMERIC_ROUNDABORT OFF;
GO

IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END
GO

USE [$(DatabaseName)];
GO

IF (SELECT OBJECT_ID('tempdb..#tmpErrors')) IS NOT NULL DROP TABLE #tmpErrors
GO

CREATE TABLE #tmpErrors (Error int)
GO

SET XACT_ABORT ON
GO

SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO

BEGIN TRANSACTION
GO

PRINT N'Creating [dbo].[Review]...';
GO

IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END
GO

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END
GO

PRINT N'Creating [dbo].[Table]...';
GO

IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END
GO

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END
GO

IF EXISTS (SELECT * FROM #tmpErrors) ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT>0 BEGIN
PRINT N'The transacted portion of the database update succeeded.'
COMMIT TRANSACTION
END
ELSE PRINT N'The transacted portion of the database update failed.'
GO

DROP TABLE #tmpErrors
GO

PRINT N'Update complete.';
GO

INSERT INTO Movie VALUES (1,'Toy Story', 'Animation, Adventure, Comedy', '1995-11-22','http://www.imdb.com/title/tt0114709/?ref_=nv_sr_1')
GO

INSERT INTO Movie VALUES (2,'Jaws','Adventure, Drama, Thriller', '1975-06-20', 'http://www.imdb.com/title/tt0073195/?ref_=nv_sr_1')
GO

INSERT INTO Movie VALUES (3, 'The Shawshank Redemption', 'Crime, Drama', N'1994-10-14', 'http://www.imdb.com/title/tt0111161/?ref_=nv_sr_1')
GO

INSERT INTO Movie VALUES (4,'Ernest Goes To Camp','Family, Comedy', N'1987-05-22 00:00:00','http://www.imdb.com/title/tt0092974/?ref_=nv_sr_1')
GO

INSERT INTO Person VALUES (1,'Programmer','F ','Greenville', NULL)
GO

INSERT INTO Person VALUES (2,'Student','M ', 'Clemson', 21)
GO

INSERT INTO Person VALUES (3,'Baker', 'M ', 'Mars', 55)
GO

INSERT INTO Person VALUES (4,'Author','F ','Greensboro', 35)
GO

INSERT INTO Person VALUES (5, 'Surfer','M ','Seneca', 18)
GO

INSERT INTO Person VALUES (6, 'Salesman', 'F ', 'Pickens', 78)
GO

INSERT INTO Person VALUES (7, 'Retired', 'F ','Greenville', 98)
GO

INSERT INTO Person VALUES (8, 'Student', 'M ', 'Seneca', 23)
GO

INSERT INTO Person VALUES (9, 'Builder', 'F ', 'Charleston', 36)
GO

INSERT INTO Person VALUES (10, 'Chef', 'M ', 'Greenville', NULL)
GO

INSERT INTO Review VALUES (1, 3, 2, 9)
GO

INSERT INTO Review VALUES (2, 1, 4, 6)
GO

INSERT INTO Review VALUES (3, 8, 3, 7)
GO

INSERT INTO Review VALUES (4, 1, 1, 10)
GO

INSERT INTO Review VALUES (5, 2, 4, 10)
GO

INSERT INTO Review VALUES (6, 2, 2, 2)
GO

INSERT INTO Review VALUES (7, 4, 1, 7)
GO

INSERT INTO Review VALUES (8, 5, 4, 8)
GO

INSERT INTO Review VALUES (9, 4, 1, 2)
GO

INSERT INTO Review VALUES (10, 6, 2, 4)
GO

INSERT INTO Review VALUES (11, 6, 1, 8)
GO

INSERT INTO Review VALUES (12, 7, 3, 9)
GO

INSERT INTO Review VALUES (13, 8, 3, 1)
GO

INSERT INTO Review VALUES (14, 8, 4, 10)
GO

INSERT INTO Review VALUES (15, 9, 2, 7)
GO

INSERT INTO Review VALUES (16, 10, 1, 8)
GO

INSERT INTO Review VALUES (17, 10, 3, 7)
GO

SELECT Age From Person
INNER JOIN Review on Person.Id = Review.Person
INNER JOIN Movie ON Review.Movie = Movie.Id 
WHERE Movie.Title = 'Toy Story';
GO

SELECT Occupation FROM Person
WHERE Age < 40;
GO

SELECT Title FROM Movie
WHERE [IMDB Url] = ''
GO

SELECT Title FROM Movie
INNER JOIN Review on Movie.Id = Review.Movie
WHERE Rating < 2

--SELECT Person.Id, Person.Occupation, Person.Gender, Person.City, Person.Age FROM Person
--INNER JOIN Review ON Person.Id = Review.Person
--INNER JOIN Movie ON Review.Movie = Movie.Id
--WHERE Movie.[Release_Date] IS;

--SELECT Title FROM Movie
--INNER JOIN Review ON Movie.Id = Review.Movie
--INNER JOIN Person ON Review.Person = Person.Id
--WHERE Movie.Genre = 'Drama' & Person.Age > 30;
GO

/*
Deployment script for MovieDatabase_SQL

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/


GO

/*
Deployment script for MovieDatabase_SQL

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/


GO

/*
Deployment script for MovieDatabase_SQL

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/


GO

:setvar DatabaseName "MovieDatabase_SQL"
:setvar DefaultFilePrefix "MovieDatabase_SQL"
:setvar DefaultDataPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
:setvar DefaultLogPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"


GO

--Syntax Error: Incorrect syntax near :.
--:setvar DatabaseName "MovieDatabase_SQL"
--:setvar DefaultFilePrefix "MovieDatabase_SQL"
--:setvar DefaultDataPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
--:setvar DefaultLogPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
--

GO

:on error exit

GO

--Syntax Error: Incorrect syntax near :.
--:on error exit

GO

/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"

GO

--Syntax Error: Incorrect syntax near :.
--/*
--Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
--To re-enable the script after enabling SQLCMD mode, execute the following:
--SET NOEXEC OFF; 
--*/
--:setvar __IsSqlCmdEnabled "True"

GO

:setvar DatabaseName "MovieDatabase_SQL"
:setvar DefaultFilePrefix "MovieDatabase_SQL"
:setvar DefaultDataPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
:setvar DefaultLogPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"


GO

--Syntax Error: Incorrect syntax near :.
--:setvar DatabaseName "MovieDatabase_SQL"
--:setvar DefaultFilePrefix "MovieDatabase_SQL"
--:setvar DefaultDataPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
--:setvar DefaultLogPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
--

GO

:on error exit

GO

--Syntax Error: Incorrect syntax near :.
--:on error exit

GO

/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"

GO

--Syntax Error: Incorrect syntax near :.
--/*
--Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
--To re-enable the script after enabling SQLCMD mode, execute the following:
--SET NOEXEC OFF; 
--*/
--:setvar __IsSqlCmdEnabled "True"

GO

:setvar DatabaseName "MovieDatabase_SQL"
:setvar DefaultFilePrefix "MovieDatabase_SQL"
:setvar DefaultDataPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
:setvar DefaultLogPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"


GO

--Syntax Error: Incorrect syntax near :.
--:setvar DatabaseName "MovieDatabase_SQL"
--:setvar DefaultFilePrefix "MovieDatabase_SQL"
--:setvar DefaultDataPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
--:setvar DefaultLogPath "C:\Users\Nathan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\ProjectsV13\"
--

GO

:on error exit

GO

--Syntax Error: Incorrect syntax near :.
--:on error exit

GO

/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"

GO

--Syntax Error: Incorrect syntax near :.
--/*
--Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
--To re-enable the script after enabling SQLCMD mode, execute the following:
--SET NOEXEC OFF; 
--*/
--:setvar __IsSqlCmdEnabled "True"



GO

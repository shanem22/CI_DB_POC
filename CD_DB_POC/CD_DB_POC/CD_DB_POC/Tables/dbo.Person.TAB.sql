IF OBJECT_ID('dbo.Person') IS NULL
BEGIN 
	CREATE TABLE [dbo].[Person]
	(
		[Id] INT NOT NULL
	)
END
GO

IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'pk_PersonID' AND type = 'PK')
ALTER TABLE [dbo].[Person]
WITH CHECK ADD CONSTRAINT pk_PersonID PRIMARY KEY CLUSTERED (
		Id ASC)
GO

IF NOT EXISTS(SELECT 1 FROM sys.columns WHERE OBJECT_ID = OBJECT_ID('dbo.Person') AND Name = 'Name')
ALTER TABLE [dbo].[Person]
	ADD [Name] VARCHAR(50) NULL
GO


IF NOT EXISTS(SELECT 1 FROM sys.columns WHERE OBJECT_ID = OBJECT_ID('dbo.Person') AND Name = 'UTCCreationDate')
ALTER TABLE [dbo].[Person]
	ADD [UTCCreationDate] DATETIME NULL
GO
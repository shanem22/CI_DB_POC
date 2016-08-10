IF OBJECT_ID('dbo.Address') IS NULL
BEGIN 
	CREATE TABLE [dbo].[Address]
	(
		[Id] INT NOT NULL
	)
END
GO

IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'pk_AddressID' AND type = 'PK')
ALTER TABLE [dbo].[Address]
WITH CHECK ADD CONSTRAINT pk_AddressID PRIMARY KEY CLUSTERED (
		Id ASC)
GO

IF NOT EXISTS(SELECT 1 FROM sys.columns WHERE OBJECT_ID = OBJECT_ID('dbo.Address') AND Name = 'Name')
ALTER TABLE [dbo].[Address]
	ADD [Name] VARCHAR(50) NULL
GO
/*
IF OBJECT_ID('dbo.Orders') IS NULL
BEGIN 
	CREATE TABLE [dbo].[Orders]
	(
		[Id] INT NOT NULL
	)
END
GO

IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'pk_OrdersID' AND type = 'PK')
ALTER TABLE [dbo].[Orders]
WITH CHECK ADD CONSTRAINT pk_OrdersID PRIMARY KEY CLUSTERED (
		Id ASC)
GO
*/

IF OBJECT_ID('dbo.Orders') IS NOT NULL
BEGIN 
	DROP TABLE [dbo].[Orders]
END
GO
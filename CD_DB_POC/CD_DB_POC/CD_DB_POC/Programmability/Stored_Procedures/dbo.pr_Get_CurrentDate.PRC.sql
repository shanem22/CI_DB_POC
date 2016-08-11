IF OBJECT_ID('dbo.pr_Get_CurrentDate') IS NOT NULL
DROP PROCEDURE dbo.pr_Get_CurrentDate
GO

CREATE PROCEDURE dbo.pr_Get_CurrentDate

AS

BEGIN 

	SET NOCOUNT ON 

	SELECT GETDATE()	

END 

GO

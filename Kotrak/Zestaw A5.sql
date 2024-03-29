
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ZwrocIdKlienta @idKlienta int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Production.TransactionHistory as th
	left join Sales.SalesOrderHeader as soh on th.ReferenceOrderID = soh.SalesOrderID
	where soh.CustomerID = @idKlienta
END
GO

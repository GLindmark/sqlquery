USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_by_Name]    Script Date: 7/18/2019 2:22:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Employee_by_Name]
	@firstname nvarchar (30)

AS
BEGIN
	SELECT Firstname as 'Name'
	from employee
	
	WHERE Firstname ='Abe'
	order by 'Name';
END

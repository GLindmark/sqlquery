USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Job_List]    Script Date: 7/18/2019 10:16:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employee_Job_List]
	@search nvarchar(30)
AS
BEGIN
	SET @search = CONCAT('%', @search,'%');
	SELECT CONCAT(e.lastname, ',', e.firstname) as 'Name', description as 'Job', Format(j.salary, 'C') as salary
	from employee e
	join job j
		on j.id = e.jobid
	WHERE e.Lastname Like @search or e.Firstname like @search or j.Description like @search
	order by 'Name'
END
GO
EXEC Employee_Job_List 'ran';
GO
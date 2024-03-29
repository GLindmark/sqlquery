USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Employee]    Script Date: 7/18/2019 12:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Insert_Employee]
	@firstname nvarchar (30),
	@lastname nvarchar (30),
	@job nvarchar (30)
as
begin
	DECLARE @jobid int;

	SELECT @jobid = id from job where description = @job;

	INSERT into Employee (firstname, lastname, JobId)
		VALUES (@firstname, @lastname, @jobid)

end
GO
EXEC Insert_Employee @firstname = 'John', @lastname = 'Doe', @job = 'Director'
GO
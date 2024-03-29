Create Procedure Employee_by_Salary
	@lowsalary int,
	@highsalary int
AS
BEGIN
	SELECT CONCAT(e.lastname, ',', e.firstname) as 'Name', description as 'Job', Format(j.salary, 'C') as salary
	from employee e
	join job j
		on j.id = e.jobid
	WHERE salary >= @lowsalary AND salary <= @highsalary
	order by 'Name';
END

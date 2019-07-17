DECLARE @LowSalary int;
DECLARE @HighSalary int;

SET @LowSalary = 90000;
SET @HighSalary = 120000;

select lastname, firstname, description, salary
from job
join employee
	on jobid =job.id
where salary >= @LowSalary and salary < @HighSalary;
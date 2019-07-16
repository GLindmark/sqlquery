--Join view Employee/Job showing salary
--Sorting by Salary and Last Name
select Description, Count(*) as 'Count', Format(sum(salary), 'c') as 'Total Salary'
from Employee
join job
	on jobid =job.Id
--Group by allows one to SUM
--Having can only be used in conjunction with Group by
Group by Description
Having sum(salary) <= 250000
order by 'total salary' desc


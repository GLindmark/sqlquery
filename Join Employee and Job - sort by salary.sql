--Join view Employee/Job showing salary
--Sorting by Salary and Last Name
select concat(lastname, ', ', firstname) as 'name', description, format(Salary, 'c') as 'Salary'
from Employee
join job
	on jobid =job.Id
	order by job.salary desc, name desc;
--subselect
select firstname, lastname, description, salary
from Employee
join job
 on job.id = jobid
 where salary > (

						select avg(salary) as 'Salary'
						from Employee
						join job
						on job.id = jobid
						)
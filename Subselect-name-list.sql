select lastname, firstname, description, salary
from job
join employee
	on jobid =job.id
where lastname in (
					SELECT lastname from employee where Firstname = 'amy'

);
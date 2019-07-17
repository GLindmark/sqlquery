select lastname, firstname, description, salary, 'yes' as 'SR. EXEC'
from job
join employee
	on jobid =job.id
where description = 'president' or description = 'VP'

UNION

select lastname, firstname, description, salary, 'No' as 'SR. EXEC'
from job
join employee
	on jobid =job.id
where not (description = 'president' or description = 'VP')

select lastname, firstname, description, salary
from job
left join employee
	on jobid =job.id
where description ='asst. supervisor'
order by description
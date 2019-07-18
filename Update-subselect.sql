Update employee set
Jobid = (select id from job where description = 'director')
where jobid = (select id from job where description = 'asst director')


Select id, firstname, lastname, jobid
from employee
where jobid = (select id from job where description = 'asst director')

--Select * from job
delete from job
where id = (select id from job where description = 'asst director')
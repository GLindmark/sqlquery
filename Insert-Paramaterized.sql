Declare @Jobtitle nvarchar (30) = 'Asst. Foreman'
Declare @Jobsalary dec (9,2) = 35000;


insert into job
(Salary, Description) values (@Jobsalary, @Jobtitle);
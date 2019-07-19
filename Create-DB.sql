--CREATE DATABASE BootcampDB;
/*
CREATE TABLE Students
(
	Id int not null primary key identity(1, 1),
	Firstname nvarchar(30) not null,
	Lastname nvarchar(50) not null,
	Email nvarchar(255) null,
	Phone nvarchar (10) null,
	DateEnrolled DateTime not null default getdate()
);


INSERT into Students (Firstname, Lastname)
	VALUES('Alex', 'Chan')
	VALUES('Brailee', 'Begley')
	VALUES('Briana', 'Presley')
	VALUES('Glenn', 'Lindmark')
	VALUES('Jesse', 'Kyle')
	VALUES('Maggie', 'Schutzman')
	VALUES('Marianne', 'Linardos')
	VALUES('Titus', 'Moore')


select * from Students
Order by Firstname;



CREATE TABLE Bootcamps
(
	Id int not null primary key identity(1, 1),
	Classname nvarchar(80) not null,

);
*/


--INSERT into Bootcamps (Classname)
--	VALUES('.NET')
--INSERT into Bootcamps (Classname)
--	VALUES('Java')

--Select * from Bootcamps 

--ALTER TABLE Students
--	Add ClassId int null
--		foreign key references Bootcamps(Id);

--Update Students
--	set ClassId = (select Id from Bootcamps where Classname = 'Java')
--	Where lastname = 'Doe'

	--Update Students
	--set ClassId = (select Id from Bootcamps where Classname = '.net')
	--Where lastname <> 'Doe'

--select * from students
--select * from bootcamps


--CREATE TABLE Assessments
--(
--	Id int not null primary key identity(1, 1),
--	Technology nvarchar(50) not null,
--	NbrQuestions int not null default 10

--);
--Insert into Assessments (Technology, NbrQuestions) Values ('Git', 5) 
--Values('C#')
--Insert into Assessments (Technology) 
--Values('C#')
--Insert into Assessments (Technology) 
--Values('SQL')
--Insert into Assessments (Technology) 
--Values('JavaScript')
--Insert into Assessments (Technology) 
--Values('Angular')

----Below is what I did, above was Greg better suggestion for adding the default of 10 for all and entering the 5 for just git

--Update Assessments
--	set NbrQuestions = '5'
--	Where Technology = 'Git'



--Update Assessments
--	set NbrQuestions = '10'
--	Where Technology <> 'Git'



--CREATE TABLE AssessmentScores
--(
--	Id int not null primary key identity(1, 1),
--	StudentId int not null foreign key references Students(Id),
--	AssessmentId int not null foreign key references Assessments(Id),
--	NbrCorrect int not null 

--);


Select CONCAT(Lastname, ', ', Firstname) as 'Name', ClassName as 'Bootcamp',Technology as 'Assessment', NbrCorrect, NbrQuestions,
CAST(((CAST(NbrCorrect as decimal) / CAST(NbrQuestions as decimal)) * 100) as int) as 'Score'
--The CAST is to get the score as a percentage.  You must first use decimals to use CAST
	from Students s
	join AssessmentScores sc
		on s.Id = sc.studentid
	join Assessments a
		on a.Id = sc.assessmentId
	join Bootcamps b
		on b.Id = s.classId
	Where s.id = 1


Select * from students
Select * from bootcamps
Select * from Assessments


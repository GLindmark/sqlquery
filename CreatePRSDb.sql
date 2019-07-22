/*Use MASTER;
go
DROP DATABASE IF EXISTS SqlPrs
go
CREATE DATABASE SqlPrs;
go
use SqlPrs;
go
CREATE TABLE Users (
	Id int not null primary key identity(1, 1),
	Username nvarchar (30) unique not null,
	Password nvarchar (30) not null,
	Firstname nvarchar (30) not null,
	Lastname nvarchar (30) not null,
	Phone nvarchar (12),
	Email nvarchar (255),
	IsReviewer bit not null DEFAULT 1,
	IsAdmin bit not null DEFAULT 1,
);
go

--| Name       | Type    | Null | Len | Unique | PK  | FK  | Def | Gen | Notes |
--| ----       | ----    | ---- | --- | ------ | --- | --- | --- | --- | ----- |
--| Id         | Integer | No   | N/A | Yes    | Yes | No  | No  | Yes | 1,1   |
--| Username   | String  | No   | 30  | Yes    | No  | No  | No  | No  |       |
--| Password   | String  | No   | 30  | No     | No  | No  | No  | No  |       |
--| Firstname  | String  | No   | 30  | No     | No  | No  | No  | No  |       |
--| Lastname   | String  | No   | 30  | No     | No  | No  | No  | No  |       |
--| Phone      | String  | Yes  | 12  | No     | No  | No  | No  | No  |       |
--| Email      | String  | Yes  | 255 | No     | No  | No  | No  | No  |       |
--| IsReviewer | Boolean | No   | N/A | No     | No  | No  | 1   | No  |       |
--| IsAdmin    | Boolean | No   | N/A | No     | No  | No  | 1   | No  |       |


Insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('GLindmark', '12345', 'Glenn', 'Lindmark', '5135649781', 'lindmark421@gmail.com', '1', '2')
	Values ('MLindmark', '4565', 'Mike', 'Lindmark', '5135649781', 'lindmark421@gmail.com', '1', '0')
	Values ('BPressley', '4565', 'Brianna', 'Pressley', '513-564-9791', 'lindmark421@gmail.com', '0', '0')
	Values ('MLindardos', '4565', 'Marianne', 'Pressley', '513-564-9781', 'lindmark421@gmail.com', '0', '0')
	Values ('4512345645', 'Marianne', 'Pressley', '513-564-978199', 'lindmark421@gmail.com', '1', '0')

Insert into Users (Username, Password, Firstname, Lastname, Phone, Email)
Values ('COddbody', '4512345645', 'Marianne', 'Pressley', '513-564-9781', 'lindmark421@gmail.com')

Select * from Users



--| Name       | Type    | Null | Len | Unique | PK  | FK  | Def | Gen | Notes |
--| ----       | ----    | ---- | --- | ------ | --- | --- | --- | --- | ----- |
--| Id         | Integer | No   | N/A | Yes    | Yes | No  | No  | Yes | 1,1   |
--| Code       | String  | No   | 30  | Yes    | No  | No  | No  | No  |       |
--| Name       | String  | No   | 30  | No     | No  | No  | No  | No  |       |
--| Address    | String  | No   | 30  | No     | No  | No  | No  | No  |       |
--| City       | String  | No   | 30  | No     | No  | No  | No  | No  |       |
--| State      | String  | No   | 2   | No     | No  | No  | No  | No  |       |
--| Zip        | String  | No   | 5   | No     | No  | No  | No  | No  |       |
--| Phone      | String  | Yes  | 12  | No     | No  | No  | No  | No  |       |
--| Email      | String  | Yes  | 255 | No     | No  | No  | No  | No  |       |

CREATE TABLE Vendors(
	Id int not null primary key identity(1, 1),
	Code nvarchar (30) not null unique,
	Name nvarchar (30) not null,
	Address nvarchar (30) not null,
	City nvarchar (30) not null,
	State nvarchar (2) not null,
	Zip nvarchar (5) not null,
	Phone nvarchar (12),
	Email nvarchar (255),
	);
go
	INSERT into Vendors (Code, Name, Address, City, State, Zip)
		VALUES ('K-1001', 'Kroger', '123 Court St.', 'Cincinnati', 'OH', '45202')
	INSERT into Vendors (Code, Name, Address, City, State, Zip)
		VALUES ('M-1002', 'Meijer', '245 Sycamore Dr', 'Mason', 'OH', '46522')
	INSERT into Vendors (Code, Name, Address, City, State, Zip)
		VALUES ('J-1003', 'Jungle Jim', '456 Eastgate', 'Clermont', 'OH', '45255')
	INSERT into Vendors (Code, Name, Address, City, State, Zip)
		VALUES ('', '', '', '', '', '')
	INSERT into Vendors (Code, Name, Address, City, State, Zip)
		VALUES ('', '', '', '', '', '')

Select * from Vendors



--| Name       | Type    | Null | Len  | Unique | PK  | FK  | Def | Gen | Notes |
--| ----       | ----    | ---- | ---  | ------ | --- | --- | --- | --- | ----- |
--| Id         | Integer | No   | N/A  | Yes    | Yes | No  | No  | Yes | 1,1   |
--| PartNbr    | String  | No   | 30   | Yes    | No  | No  | No  | No  |       |
--| Name       | String  | No   | 30   | No     | No  | No  | No  | No  |       |
--| Price      | Decimal | No   | 11,2 | No     | No  | No  | No  | No  |       |
--| Unit       | String  | No   | 30   | No     | No  | No  | No  | No  |       |
--| PhotoPath  | String  | Yes  | 255  | No     | No  | No  | No  | No  |       |
--| VendorId   | Integer | No   | N/A  | No     | No  | Yes | No  | No  | FK to Vendor |

CREATE TABLE Products (

	Id int not null primary key identity (1,1),
	PartNbr nvarchar (30) not null unique,
	PartName nvarchar (30) not null,
	Price decimal(11,2) not null,
	Unit nvarchar (30) not null,
	PhotoPath nvarchar (255),
	VendorId int not null foreign key references Vendors(Id),
);
go


Insert into Products (Partnbr, PartName, Price, Unit, VendorId)
	VALUES ('101', 'Shaft', '100', '1', '1')
Insert into Products (Partnbr, PartName, Price, Unit, VendorId)
	VALUES ('102', 'Drive', '100', '1', '1')
Insert into Products (Partnbr, PartName, Price, Unit, VendorId)
	VALUES ('105', 'Belt', '1050000', '2', '3')
Insert into Products (Partnbr, PartName, Price, Unit, VendorId)
	VALUES ('110', 'Bolt', '05', '1', '4')
Insert into Products (Partnbr, PartName, Price, Unit, VendorId)
	VALUES ('111', 'Washer', '.05', '1', '4')

Select * from Products


--| Name            | Type    | Null | Len  | Unique | PK  | FK  | Def | Gen | Notes |
--| ----            | ----    | ---- | ---  | ------ | --- | --- | --- | --- | ----- |
--| Id              | Integer | No   | N/A  | Yes    | Yes | No  | No  | Yes | 1,1   |
--| Description     | String  | No   | 80   | No     | No  | No  | No  | No  |       |
--| Justification   | String  | No   | 80   | No     | No  | No  | No  | No  |       |
--| RejectionReason | String  | Yes  | 80   | No     | No  | No  | No  | No  |       |
--| DeliveryMode    | String  | No   | 20   | No     | No  | No  | Yes | No  | Def 'Pickup' |
--| Status          | String  | No   | 10   | No     | No  | No  | Yes | No  | Def 'NEW'   |
--| Total           | Decimal | No   | 11,2 | No     | No  | No  | Yes | No  | Def 0 |
--| UserId          | Integer | No   | N/A  | No     | No  | Yes | No  | No  | FK to User |


CREATE TABLE Requests (

	Id int not null primary key identity (1,1),
	Description nvarchar (80) not null,
	Justification nvarchar (80) not null,
	RejectionReason nvarchar (80),
	DeliveryMode nvarchar (20) not null DEFAULT 'Pickup',
	Status nvarchar (10) not null DEFAULT 'NEW',
	Total Decimal(11,2) not null DEFAULT 0,
	UserId	int not null foreign key references Users (Id),
  );
go


Insert into Requests (Description, Justification, UserId)
	VALUES ('Chair', 'New Hire', '1')
Insert into Requests (Description, Justification, UserId)
	VALUES ('Table', 'Conference Room', '3')
Insert into Requests (Description, Justification, UserId)
	VALUES ('Microwave', 'Breakroom Room', '1')

Select * from Requests


--| Name            | Type    | Null | Len  | Unique | PK  | FK  | Def | Gen | Notes |
--| ----            | ----    | ---- | ---  | ------ | --- | --- | --- | --- | ----- |
--| Id              | Integer | No   | N/A  | Yes    | Yes | No  | No  | Yes | 1,1   |
--| RequestId       | Integer | No   | N/A  | No     | No  | Yes | No  | No  |       |
--| ProductId       | Integer | No   | N/A  | No     | No  | Yes | No  | No  |       |
--| Quantity        | Integer | No   | N/A  | No     | No  | No  | Yes | No  | def to 1 |


CREATE TABLE RequestLine (

	Id int not null primary key identity (1,1),
	RequestId int not null foreign key references Requests (Id),
	ProductId int not null foreign key references Products (Id),
	Quantity int not null DEFAULT 1,
	
	);
go


Select * from Requests

Select * from Products

INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '7')
INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '4')
INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '9')
INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '10')


INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '7')
INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '4')
INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '9')
INSERT into RequestLine (RequestId, ProductId, Quantity)
	VALUES ('1', '3', '10')

	*/

Select * from Requests



SELECT CONCAT(Lastname, ' ', Firstname) as 'Name'
	from Users u


Select * from RequestLine rl
	join Products p
	on p.id = rl.Id
	join Requests r
	on r.Status = 'NEW'
	join Users u


	--Greg solution

Select
		CAST(r.id as char) as 'Id', r.Description, r.Status,
		CONCAT(u.Firstname, ' ', u.Lastname) as 'Name',
		p.PartName, CAST(rl.Quantity as nvarchar (10)) as 'Qty',
		CAST(p.Price as nvarchar (10)) as 'Price', (rl.Quantity * p.Price) as 'Subtotal'
		from Requests r
		join RequestLine rl
			on rl.requestId = r.Id
		join Products p
			on p.Id = rl.ProductId
		Join Users u
			on u.id = r.UserId

UNION

select '', '', '', '', '', '', 'TOTAL:', SUM(rl.Quantity * p.price) as 'Total'

		from Requests r
		join RequestLine rl
			on rl.requestId = r.Id
		join Products p
			on p.Id = rl.ProductId
		Join Users u
			on u.id = r.UserId


	group by r.Id, r.Description
Order by Id desc


	Select * from RequestLine


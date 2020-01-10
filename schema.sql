use mobile
GO

if exists(select 1 from sys.objects where name = 'Employee' and type = 'U')
	drop table dbo.Employee
GO

create table dbo.Employee(
EmployeeID int not null identity(1,1),
FirstName nvarchar(128) null,
LastName nvarchar(128) not null,
MiddleName nvarchar(128) null,
DepartmentID int null,
PositionID int null
constraint PK_Employee primary key(EmployeeID))
GO
insert into dbo.Employee(LastName, FirstName, MiddleName)
values('Иванов', 'Иван', 'Иванович')
select * from dbo.Employee
GO


if exists(select 1 from sys.objects o where o.name = 'Departments' and o.type = 'U')
	drop table dbo.Departments
create table dbo.Departments(
DepartmentID int not null identity(1,1),
Name nvarchar(128),
constraint PK_Departments primary key(DepartmentID))
GO
insert into dbo.Departments(Name)
values('IT')
GO
select * from dbo.Departments
GO
if exists(select 1 from sys.objects o where o.name = 'Positions' and o.type = 'U')
	drop table dbo.Positions

create table dbo.Positions(
PositionID int not null identity(1,1),
Name nvarchar(128),
constraint PK_Positions primary key(PositionID))
GO
insert into dbo.Positions(Name) values('Developer')
GO
select * from dbo.Positions
GO
select * from dbo.Employee
GO

update dbo.Employee set DepartmentID = 1, PositionID = 1
GO

select * from dbo.Employee



--DDL (Create, Drop, Truncate, Alter)
create database PB301
use PB301
create table Students
(
Id int,
[Name] nvarchar(20),
Email varchar(20),
Point decimal (18,2),
IsMarried bit
)
alter table Students add Age int
exec sp_rename Students, Student
exec sp_rename [Students.Name], Ad
--DML (Insert, Update, Delete, Select)
insert into Students values
(1,'Emil','emmilm77@gmail.com',99.20,0,26),
(2,'Memmedeli','memmedeli@gmail.com',99.50,0,20),
(3,'Ayaz','ayaz@gmail.com',98.80,9,24)
update Students set [Name]='Filankes' where Id>0
--DQL
select * from Students
select sum(point) TotalPoint from Students
select min(point) MinimumPoint from Students
select len(Name) 'Length', Name from Students

--DDL (Create, Drop, Truncate, Alter)
create database Departments
use Departments
create table Departments
(
Id int,
DepartmentName nvarchar(20),
EmployeeCount int,
isDeleted bit,
DepartmentSalary int
)
insert into Departments values
(1,'Finance',10,0,10000),
(2,'HR',2,0,2000),
(3,'Business Development',10,0,2000),
(4,'Administrative',4,0,4000)

--Generating Table
create table Employees
(
Id int,
FullName nvarchar(20),
Age int,
Email varchar(20),
Salary int
)

--Adding Employees to table
insert into Employees values
(1,'Emil Musayev',26,'emmilm77@gmail.com',1000),
(2,'Test Testov', 25,'test@gmail.com',100),
(3,'Test1 Test1ov', 24,'test1@gmail.com',90)

--Employee Table below
select * from Employees

--Setting Salary for first Id
update Employees set Salary=5000 where Id=1

--Show 500+ Salary with all data
select * from Employees where Salary>500

--Select specific columns
select Fullname, Email, Salary from Employees

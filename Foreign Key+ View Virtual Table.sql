create database EMDB
go

use EMDB
go

create table Department(

	DepartmentID int primary key identity(1,1),
	Name varchar(30) not null

);
insert into Department values ('HR'),('Marketing'),('Sales')
go


create table Designations(
	

	DesignationID  int primary key identity(1,1),
	Designation varchar (30) not null
);
insert into Designations values ('Executive'),('Manager'),('Sells Man')
go

CREATE TABLE Employees(

    EmployeeId int PRIMARY KEY IDENTITY(1,1),
    EmployeeName varchar(40) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,

    -----------Foreign Key-----------

    DepartmentID int,
    DesignationID int,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (DesignationID) REFERENCES Designations(DesignationID)

);
insert into Employees values ('Sakib', 5000.00,1,2)
insert into Employees values ('Rakib', 4000.00,3,1)
insert into Employees values ('Kalam', 3500.00,1,3)

GO

select * from Employees
go
------View Virtual Table---------

create view vwEmployeeinformation as


select
E.EmployeeName,
D.Name as Department,
E.Salary,
Ds.Designation as Designation

    
from Employees E inner join Department D on E.DepartmentID=D.DepartmentID
                inner join Designations Ds on E.DesignationID=Ds.DesignationID


select * from vwEmployeeinformation
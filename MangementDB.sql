Create Database ManagementDB
go

use ManagementDB
go

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Salary DECIMAL(10,2)
);
GO 

INSERT INTO Employees (FullName, Age, Department, Salary) VALUES
('Employee 1', 22, 'IT', 21000),
('Employee 2', 23, 'HR', 22000),
('Employee 3', 24, 'Sales', 23000),
('Employee 4', 25, 'Finance', 24000),
('Employee 5', 26, 'IT', 25000),
('Employee 6', 27, 'HR', 26000),
('Employee 7', 28, 'Sales', 27000),
('Employee 8', 29, 'Finance', 28000),
('Employee 9', 30, 'IT', 29000),
('Employee 10', 31, 'HR', 30000),

('Employee 11', 22, 'Sales', 21000),
('Employee 12', 23, 'Finance', 22000),
('Employee 13', 24, 'IT', 23000),
('Employee 14', 25, 'HR', 24000),
('Employee 15', 26, 'Sales', 25000),
('Employee 16', 27, 'Finance', 26000),
('Employee 17', 28, 'IT', 27000),
('Employee 18', 29, 'HR', 28000),
('Employee 19', 30, 'Sales', 29000),
('Employee 20', 31, 'Finance', 30000),

('Employee 21', 22, 'IT', 21000),
('Employee 22', 23, 'HR', 22000),
('Employee 23', 24, 'Sales', 23000),
('Employee 24', 25, 'Finance', 24000),
('Employee 25', 26, 'IT', 25000),
('Employee 26', 27, 'HR', 26000),
('Employee 27', 28, 'Sales', 27000),
('Employee 28', 29, 'Finance', 28000),
('Employee 29', 30, 'IT', 29000),
('Employee 30', 31, 'HR', 30000),

('Employee 31', 22, 'Sales', 21000),
('Employee 32', 23, 'Finance', 22000),
('Employee 33', 24, 'IT', 23000),
('Employee 34', 25, 'HR', 24000),
('Employee 35', 26, 'Sales', 25000),
('Employee 36', 27, 'Finance', 26000),
('Employee 37', 28, 'IT', 27000),
('Employee 38', 29, 'HR', 28000),
('Employee 39', 30, 'Sales', 29000),
('Employee 40', 31, 'Finance', 30000),

('Employee 41', 22, 'IT', 21000),
('Employee 42', 23, 'HR', 22000),
('Employee 43', 24, 'Sales', 23000),
('Employee 44', 25, 'Finance', 24000),
('Employee 45', 26, 'IT', 25000),
('Employee 46', 27, 'HR', 26000),
('Employee 47', 28, 'Sales', 27000),
('Employee 48', 29, 'Finance', 28000),
('Employee 49', 30, 'IT', 29000),
('Employee 50', 31, 'HR', 30000);

Select * from Employees

----------------------------- Sorting-----------------------------


select top 8 * from Employees order by Salary asc
-----------------------------------------------------------
select top 5 * from Employees order by Salary desc



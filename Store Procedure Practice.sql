create database SchoolManagementDB
go

use SchoolManagementDB
go


------- Delete table--------
drop table Students





------ Create Table----------

CREATE TABLE Students(
    StudentID int PRIMARY KEY IDENTITY(1,1),
    Name varchar(30) NOT NULL,
    Class varchar(20) NOT NULL,
    RollNo int,
    Age int
);
GO



----- Insert Data-------


Insert into Students VALUES ('Maria', 'Ten' , 181,15);
INSERT INTO Students VALUES ('Rahim', 'Nine', 102, 14);
INSERT INTO Students VALUES ('Karim', 'Ten', 115, 15);
INSERT INTO Students VALUES ('Sadia', 'Eight', 98, 13);
INSERT INTO Students VALUES ('Mitu', 'Nine', 134, 14);
INSERT INTO Students VALUES ('Roni', 'Ten', 167, 15);
INSERT INTO Students VALUES ('Liza', 'Eight', 201, 13);
INSERT INTO Students VALUES ('Sajib', 'Nine', 145, 14);
INSERT INTO Students VALUES ('Hasan', 'Ten', 189, 15);

GO

select * from Students
go

---------Store Procedure---------

----Add ----

create proc addstudents
            @Name varchar(30),
            @Class varchar(20),
            @RollNo int,
            @Age int



as
Begin

    insert into Students (Name, Class, RollNo,Age)values(@Name,@Class,@RollNo,@Age)

End;
go

------- Store Precedure Data Insert -----------

Exec addstudents 'Mamun', 'Twelve', 114,35;
Exec addstudents 'Sakib', 'Seven', 170,25;

select * from Students


-------- Show Data By Store Procedure-------

create proc getallstudents
as
begin

    select * from Students

end;

exec getallstudents
go

-------------Update Data By Store Procedure-------------




create PROC UpdateStudents
    @Name varchar(30),
    @Class varchar(20),
    @RollNo int,
    @Age int
AS
BEGIN
    UPDATE Students
    SET RollNo = @RollNo, 
        Name = @Name
    WHERE
      Age = @Age
      AND Class = @Class;
END;
GO

EXEC UpdateStudents
    @RollNo = 110,
    @Name = 'Kuyddus',
    @Age = 15,
    @Class = 'Ten';
GO

SELECT * FROM Students;
GO

create proc deleteStudents
            @name varchar(30)


as
begin
    delete from Students
    where name= @name

    print 'Delete Scuessfully'

end;

    exec deleteStudents @name='Sadia'
go


------- Store Procedure Delete With Condition --------

create proc deleteStudentID
            @StudentID int


as
begin

    if exists (select 1 from Students where StudentID=@StudentID)
        begin

            delete from Students
            where StudentID= @StudentID
            print'Student Data Deleted Succesfully'

        end;
            
            
        else
            begin

                Print'ID Not Deleted'

            end;

end;
select * from Students

exec deleteStudentID @StudentID= 5

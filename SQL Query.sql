CREATE DATABASE LibraryDB
GO



USE LibraryDB
GO

CREATE TABLE Books (
    BookID int PRIMARY KEY, 
    Title varchar(100) NOT NULL,
    Author varchar(20) NOT NULL,
    Price decimal(10, 2) NOT NULL,
    PublishedYear varchar(20) NOT NULL
);
GO
Drop Table Books;
GO


insert into Books VALUES(1, 'TTHE SECRITE', 'THOMPSON', 500, '2015')
insert into Books VALUES(2, 'SECRITE', 'THOMPSON', 600, '2016')
insert into Books VALUES(3, 'HOME', 'THOMPSON', 700, '2017')
insert into Books VALUES(4, 'HOUSE', 'THOMPSON', 800, '2018')
insert into Books VALUES(5, 'HOTEL', 'THOMPSON', 900, '2019')
insert into Books VALUES(6, 'HILL', 'THOMPSON', 1000, '2020')
insert into Books VALUES(7, 'HITMAN', 'THOMPSON', 1100, '2021')
insert into Books VALUES(8, 'HORSE', 'THOMPSON', 1200, '2022')
insert into Books VALUES(9, 'HERO', 'THOMPSON', 1300, '2023')

SELECT * FROM Books

SELECT Price From Books
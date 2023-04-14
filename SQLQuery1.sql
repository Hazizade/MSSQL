CREATE DATABASE Department

CREATE TABLE Employee(
 id int primary key identity,
 Fullname nvarchar(100) NOT NULL,
 Age int CHECK(Age > 0) NOT NULL,
 Email nvarchar(100) NOT NULL,
 Salary int CHECK (Salary between 300 AND 2000) NOT NULL

)

CREATE TABLE Groups(
  Id int primary key identity,
  Name nvarchar(50)

)

ALTER TABLE Employee
ADD GroupId int foreign key Groups(Id)

USE Department

INSERT INTO Employee(Fullname,Age,Email,Salary)
VALUES ('Togrul',21,'togrul@er.com',1600),
       ('Raul',24,'raul@as.com',1500),
	   ('Emil',26,'emil@ve.com',1800)

SELECT * FROM Employee
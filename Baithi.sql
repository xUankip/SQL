CREATE DATABASE EmployeeDB
GO
USE EmployeeDB
GO
CREATE TABLE Department(
    DepartID INT PRIMARY KEY,
    DepartName VARCHAR (50) NOT NULL,
    Description VARCHAR (100) NOT NULL
)
GO
DROP TABLE Employee
GO
CREATE TABLE Employee(
    EmpCode CHAR (6),
    FisrtName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Birthday Smalldatetime NOT NULL,
    Gender BIT DEFAULT 1,
    Address VARCHAR (100),
    DepartID INT,
    Salary MONEY,
    FOREIGN KEY (DepartID) REFERENCES Department(DepartID)
)
GO
INSERT INTO Department VALUES  (1, 'Ngo Truong Xuan', 'Base'),
                                (2, 'Ngo Xuan Truong', 'Lux'),
                                (3, 'Nguyen Thi Hong Hai', 'VIP')
GO

INSERT INTO Employee VALUES ('123', 'Ngo', 'Xuan', '1997/12/12', 0, 'Hanoi', 1, '100'),
                            ('234', 'Ngo', 'Truong', '1996/2/13', 0, 'Hanoi', 2, '200'),
                            ('345', 'Nguyen', 'Hai', '1997/8/28', 1, 'Hanoi', 3, '300')
GO


SELECT * FROM Department
SELECT * FROM Employee

UPDATE Employee
SET Salary = Salary * 1.1
SELECT Salary FROM Employee

ALTER TABLE Employee 
ADD CONSTRAINT CheckSalary CHECK (Salary>0)
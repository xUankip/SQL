DROP DATABASE Citisoftware
GO
CREATE DATABASE Citisoftware
GO
USE Citisoftware
GO
DROP TABLE Employee
GO
CREATE TABLE Employee(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR (100),
    Tel CHAR (11),
    Email VARCHAR (30)
)
GO
INSERT INTO Employee VALUES (123,'Ngo Truong Xuan', '0987803721', '@gmail.com'),
                            (234,'Nguyen Thanh Mai', '0982303721', '@gmail.com'),
                            (345,'Paam Vu Minh Lam', '0975603721', '@gmail.com')

SELECT * FROM Employee

DROP TABLE Nhom
GO 
CREATE TABLE Nhom (
    GroupID INT primary Key,
    GroupName VARCHAR (30),
    LeaderID INT,
    ProjectID INT 
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
)
GO
INSERT INTO Nhom VALUES (1, 'Nhom1', 123, 1),
                        (2, 'Nhom2', 234, 2),
                        (3, 'Nhom3', 345, 3)
GO
SELECT * FROM Nhom


DROP TABLE Project
GO
CREATE TABLE Project(
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR (30),
    StartDate DATETIME,
    EndDate DATETIME,
    Periodd INT,
    Cost MONEY
    
)
GO
INSERT INTO Project VALUES (1, 'CODE', '8/8/2023', '8/8/2025', 24, 24000000),
                            (2, 'DATABASE', '8/8/2023', '8/8/2026', 36, 44000000),
                            (3, 'BACKEND', '8/8/2023', '8/8/2027', 48, 64000000)
GO
SELECT * FROM Project


CREATE TABLE GroupDetail(
    GroupID INT,
    EmployeeID INT,
    Statuss CHAR(20),
    FOREIGN KEY (GroupID) REFERENCES Nhom(GroupID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
)
GO
INSERT INTO GroupDetail VALUES (1, 123, 'Ongoing'),
                                (2, 234, 'Ongoing'),
                                (3, 345, 'Ongoing')
                                GO
SELECT * FROM GroupDetail
GO

------------------3A-------------
SELECT * FROM Employee
------------------3B-------------
SELECT * FROM Employee AS e
JOIN GroupDetail AS gd ON e.EmployeeID = gd.EmployeeID
JOIN Nhom AS n ON gd.GroupID = n.GroupID
JOIN Project AS p ON n.ProjectID = p.ProjectID
WHERE p.ProjectName = 'CODE';
-----------------3C--------------
SELECT n.GroupID, n.GroupName, COUNT(gd.EmployeeID) AS NumberOfEmployees
FROM Nhom n
LEFT JOIN GroupDetail gd ON n.GroupID = gd.GroupID
GROUP BY n.GroupID, n.GroupName;
---------------3D--------------
SELECT e.Name, e.Tel, e.Email
FROM Employee AS e
JOIN Nhom as n ON e.EmployeeID = n.LeaderID
--------------3E---------------

SELECT
    N.GroupID,
    N.GroupName,
    E.EmployeeID,
    E.Name AS EmployeeName,
    P.ProjectID,
    P.ProjectName,
    P.StartDate,
    P.EndDate
FROM
    Nhom N
JOIN
    GroupDetail GD ON N.GroupID = GD.GroupID
JOIN
    Employee E ON GD.EmployeeID = E.EmployeeID
JOIN
    Project P ON N.ProjectID = P.ProjectID
WHERE
    P.StartDate > '2023-07-07';

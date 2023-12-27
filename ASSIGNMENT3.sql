CREATE DATABASE ASS3
GO
USE ASS3
Drop TABLE Customer
GO 
CREATE TABLE Customer(
    CustormerName VARCHAR (50),
    Cccd CHAR (10),
    Address VARCHAR (100),
    Tel CHAR (10),
    TelType VARCHAR (20),
    TelDate DATETIME
)
GO
INSERT INTO Customer VALUES ('John Stone', '0123456789', 'Ha Noi', '0865000156', 'Tra Truoc', '10/10/2021')
INSERT INTO Customer VALUES ('John Stone', '0123456789', 'Ha Noi', '0865000156', 'Tra Truoc', '12/12/2019')
INSERT INTO Customer VALUES ('Nhu Trang', '0220976523', 'Ha Noi', '0865000156', 'Tra Truoc', '10/10/2021'),
                            ('Tao Sau', '0220974523', 'Ha Noi', '0912476567', 'Tra Truoc', '03/24/2012'),
                            ('Khanh Linh', '022714314', 'Ha Noi', '0865007823', 'Tra Truoc', '12/27/2022'),
                            ('Phuong Anh', '0297004563', 'Ha Noi', '0865954156', 'Tra Truoc', '5/5/2019'),
                            ('Truong Xuan', '025006523', 'Ha Noi', '0869870156', 'Tra Truoc', '10/10/2020')
GO
-----------5------------------
SELECT * FROM Customer

SELECT * FROM Customer WHERE Cccd = '0123456789'

SELECT Customer.Tel, Customer.CustormerName FROM Customer WHERE Address = 'Ha Noi'

SELECT Customer.Tel FROM Customer WHERE TelDate = '12/12/2019'
----------6a--------------------
SELECT COUNT(*) AS TotalCustomers
FROM Customer
------------6b------------------
SELECT COUNT(Tel) AS TotalTel FROM Customer
------------6c------------------
SELECT Customer.Tel FROM Customer WHERE TelDate < '12/12/2019'
------------6d------------------
SELECT * FROM Customer 
DROP TABLE DonHang
GO
CREATE TABLE DonHang (
OrderID INT PRIMARY KEY UNIQUE,
CustomerID INT,
OrderDate DATE,
STATUS NVARCHAR (250)
)
GO
DROP TABLE Customer
GO
CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY UNIQUE, 
    CusNAME NVARCHAR(50),
    DiaChi NVARCHAR(100),
    Sdt VARCHAR (10),
    STATUS NVARCHAR (250)
)
GO
Drop TABLE DonHangChiTiet
GO
Create TABLE DonHangChiTiet(
    OrderID INT,
    ProductID INT PRIMARY KEY UNIQUE,
    Price MONEY,
    Quantity VARCHAR (100)
)
GO
DROP TABLE SanPham
GO 
CREATE TABLE SanPham(
    ProductID INT,
    ProName NVARCHAR (50),
    MoTa NVARCHAR (200),
    Unit VARCHAR (20),
    Price MONEY,
    Quantity VARCHAR (100),
    STATUS NVARCHAR (250)
)
GO

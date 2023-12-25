DROP TABLE Hang 
GO 
CREATE TABLE Hang(
    HangID INT,
    HangName NVARCHAR (50),
    DiaChi NVARCHAR (200),
    Tel VARCHAR (10),
    PRIMARY KEY (HangName)
)
GO
INSERT INTO Hang VALUES (123, 'ASUS' , 'USA', '019238175'),
                        (234, 'MAC' , 'USA', '019231235'),
                        (345, 'DELL' , 'USA', '019213675')
GO
SELECT * FROM Hang 
DROP TABLE SanPhamHienCo
GO
CREATE TABLE SanPhamHienCo (
    HangID INT,
    HangName NVARCHAR (50),
    TenSanPham NVARCHAR (50),
    Mota NVARCHAR (100),
    Unit VARCHAR (10),
    Price Money,
    Quantity INT
    FOREIGN KEY (HangName) REFERENCES Hang(HangName),
)
GO
INSERT INTO SanPhamHienCo VALUES  (123,'Asus','May Tinh Asus', 'May nhap cu', 'Chiec', 1000, 10),
                            (234,'Mac','Dien Thoai', 'Dien thoai hot', 'Chiec', 200, 200),
                            (345,'Dell','May In', 'May in binh dan', 'Chiec', 100, 10)
SELECT * FROM SanPhamHienCo

-------------------------- 4 A ----------------------------
SELECT * FROM Hang


--------------------------4 B ----------------------------
SElECT * FROM SanPhamHienCo


--------------------------5 A ----------------------------
SELECT HangName FROM Hang ORDER BY HangName DESC


--------------------------5 B -----------------------------
SELECT (TenSanPham) FROM SanPhamHienCo ORDER BY TenSanPham DESC 


--------------------------5 C -----------------------------
SELECT * FROM Hang WHERE HangName ='Asus'


-------------------------5 D ------------------------------
SELECT * FROM SanPhamHienCo WHERE Quantity < 11


-------------------------5 E ------------------------------
SELECT SanPhamHienCo.TenSanPham, Hang.HangName
FROM SanPhamHienCo 
JOIN Hang ON Hang.HangName = SanPhamHienCo.TenSanPham
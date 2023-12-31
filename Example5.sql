IF EXISTS (SELECT *FROM sys.databases WHERE Name LIKE 'Example5')
    DROP DATABASE Example5
GO 
CREATE DATABASE Example5 
GO 
USE Example5
GO 

--DDL : Create, ALTER, DROP 
-- DML : INSERT, UPDATE, DELETE 
-- DATATYPE IN SQL
--Tạo Bảng Lớp Học
CREATE TABLE LopHoc(
    MaLopHoc INT PRIMARY KEY IDENTITY,
    TenLopHOc VARCHAR (10))

GO
SELECT * FROM LopHoc
GO 
INSERT INTO LopHoc(TenLopHOc) VALUES('T2009M')
SELECT * FROM LopHoc
UPDATE LopHoc SET TenLopHOc = 'T2308M'
WHERE MaLopHoc =1002
DELETE FROM LopHoc WHERE MaLopHoc = 1002
GO 

DROP TABLE SinhVien
CREATE TABLE SinhVien(
    MaSV INT PRIMARY KEY,
    TenSV NVARCHAR (50),
    ClassCode INT,
    CONSTRAINT fk FOREIGN KEy (ClassCode) REFERENCES LopHoc (MaLopHoc)
)
GO
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUES (1, 'Xuan', 5);
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUES (2, 'HIU', 1004);
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUES (3, 'LamP', 1007), (16,'Linh', 1006);
SELECT * FROM SinhVien
SELECT * FROM LopHoc
GO

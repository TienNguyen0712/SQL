--Lay danh sach cac san pham co gia ban--
--trong khoang tu 10 den 20 do--
--Vidu1--
SELECT *
FROM dbo.Products
WHERE UnitPrice BETWEEN 10 AND 20;
--Cach khac--
SELECT *
FROM dbo.Products
WHERE UnitPrice >= 10 AND UnitPrice <= 20;
--Lay ra don dat hang dat trong khoang thoi gian--
--Tu ngay 1996-07-01--
--den ngay 1996-07-31--
--Vidu2--
SELECT *
FROM dbo.Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
--Tinh tong so tien van chuyen ( Freight ) cua cac  don dat hang--
--trong thang 7--
--Vidu3--
SELECT SUM (Freight) AS "Tong tien"
FROM dbo.Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
--Lay danh sach cac don dat hang co ngay dat hang--
--1/1/1997 den ngay 31/12/1997 duoc van chuyen bang duong thuy--
--ShipVia = 3--
--BaiTap1--
SELECT *
FROM dbo.Orders
WHERE ShipVia = 3 AND OrderDate BETWEEN '1997-01-01' AND '1997-12-31';
--Liet ke Ho va Ten nhan vien song o London--
--ngay thang nam sinh tu 1/2/1952 den ngay 31/12/1963--
--hoac ngay tuyen tu 1/2/1992 den ngay 31/12/1993--
--chi lay 3 nhan vine dau tien theo LastNmae A-Z--
--BaiTap2--
SELECT TOP 3 FirstName + ' ' + LastName AS "Ho va ten"
FROM dbo.Employees
WHERE City = 'London' 
	  AND BirthDate BETWEEN '1952-02-01' AND '1963-12-31'
	  OR HireDate BETWEEN '1992-02-01' AND '1993-12-31'
ORDER BY LastName ASC;
--Liet ke don hang ngay dat hang tu 1/7/1996 den 1/9/1996--
--Ma dat hang tu 10000 den 10250--
--Sap xep theo ShipName Z-A--
--BaiTap3--
SELECT *
FROM dbo.Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-09-01'
	  AND OrderID BETWEEN 10000 AND 10250
ORDER BY ShipName DESC;
--Liet ke tat ca cac san pham co so luong hang ton kho tu 50 den 100--
--BaiTap4--
SELECT * 
FROM dbo.Products
WHERE UnitsInStock BETWEEN 50 AND 100;
--Liet ke danh sach cac quoc gia cua ca nhan vien co sinh nhat--
--tu ngay 1/8/1996 den ngay 31/8/1996--
--BaiTap5--
SELECT Country AS "Quoc gia" 
FROM dbo.Employees
WHERE BirthDate BETWEEN '1996-08-01' AND '1996-08-31';

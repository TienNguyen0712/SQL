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

--TruyVan1--
--Tu bang OrderDetails hay liet ke cac don hang co UnitPrice--
--nam trong pha, vi tu 100 den 200--
SELECT *
FROM dbo.[Order Details]
WHERE UnitPrice BETWEEN 100 AND 200;
--TruyVan 2--
--Dua ra cac don hang co Quantity bang 10 hoac 20--
SELECT *
FROM dbo.[Order Details]
WHERE Quantity IN (10, 20);
--TruyVan3-- --Gom TruyVan1 va TruyVan2-- --7 dong--
--Tu bamg OrderDetails liet ke cac don hang co UnitPrice nam trong pham vi--
--tu 100 den 200 va don hang phai co Quatity bang 10 hoac 20--
--La giao cua ca cau TruyVan1 va TruyVan2--
SELECT *
FROM dbo.[Order Details]
WHERE UnitPrice BETWEEN 100 AND 200 AND
		Quantity IN (10, 20);
--TruyVan4-- --448 đong--
--Tu bamg OrderDetails liet ke cac don hang co UnitPrice nam trong pham vi--
--tu 100 den 200 hoac don hang phai co Quatity bang 10 hoac 20--
--Thoa 1 trong 2 dieu kien tru di cac dong thoa ca 2 dieu kien-- --448 dong--
SELECT OrderID
FROM dbo.[Order Details]
WHERE UnitPrice BETWEEN 100 AND 200 OR
		Quantity IN (10, 20);
--TruyVan5--
--Tu bamg OrderDetails liet ke cac don hang co UnitPrice nam trong pham vi--
--tu 100 den 200 hoac don hang phai co Quatity bang 10 hoac 20--
--voi DISTINCT tuc la khong co duoc trung nhau hay lap lại-- --360 dong--
SELECT DISTINCT OrderID
FROM dbo.[Order Details]
WHERE UnitPrice BETWEEN 100 AND 200 OR
		Quantity IN (10, 20);
--Dung UNION voi TruyVan5--
--Vidu1--
--Ket qua 360 dong--
SELECT OrderID
FROM dbo.[Order Details]
WHERE UnitPrice BETWEEN 100 AND 200
UNION 
SELECT OrderID
FROM dbo.[Order Details]
WHERE Quantity IN (10, 20);
--UNION ALL voi TruyVan4--
--Vidu2--
--455 dong tuc la chap nhạn tat ca--
SELECT OrderID
FROM dbo.[Order Details]
WHERE UnitPrice BETWEEN 100 AND 200
UNION ALL
SELECT OrderID
FROM dbo.[Order Details]
WHERE Quantity IN (10, 20);
--Vidu3--
--Hay liet ke toan bo cac thanh pho va quoc gia ton tai trong 2 bang--
--voi 2 tinh huong dung UNION va UNION ALL--
--UNION: Gop cac ket qua duy nhat--
SELECT City, Country FROM dbo.Suppliers
UNION
SELECT City, Country FROM dbo.Customers;
--UNION ALL: Khong bi rang buoc co the lay trung lap--
SELECT City, Country FROM dbo.Suppliers
UNION ALL
SELECT City, Country FROM dbo.Customers;
--BaiTap1--
--Viet cau lenh lay du lieu tu 3 bang Suppliers, Customera, Orders nham lay ra--
--cac quoc gia co chu cai bat dau bang U lay thanh pho tu London va quoc gia--
--giao hang den la 'USA'--
SELECT City, Country FROM dbo.Customers
WHERE Country LIKE 'U%'
UNION
SELECT City, Country FROM dbo.Suppliers
WHERE City = 'London'
UNION
SELECT ShipCity, ShipCountry FROM dbo.Orders
WHERE ShipCountry = 'USA';
 

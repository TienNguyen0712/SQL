--Vidu1--
--Lay ra tat ca cac don hang chua duoc giao hang--
--(ShippedDate => NULL)
SELECT *
FROM [dbo].[Orders]
WHERE ShippedDate IS NULL;
--Dem xem co bao nhieu don hang chua duoc giao
SELECT COUNT (*) AS 'Count of Orders'
FROM [dbo].[Orders]
WHERE ShippedDate IS NULL;
--Vidu2--
--Lay danh sach cac khach hang co khu vuc khong NULL--
SELECT *
FROM dbo.Customers
WHERE Region IS NOT NULL;
--Vidu3--
--Lay danh sach cac khach hang khong co ten cong ty--
SELECT *
FROM dbo.Customers
WHERE CompanyName IS NULL;
--BaiTap1--
--Lay ra cac don hang chua duoc giao va co khu vuc giao hang khong NULL--
SELECT *
FROM dbo.Orders
WHERE ShippedDate IS NOT NULL AND ShipRegion IS NOT NULL;
--BaiTap2--
--Lay danh sach 100 nhan vien co khu vuc khong bi NULL xep theo tham nien lam--
SELECT TOP 100 *
FROM dbo.Employees
WHERE Region IS NOT NULL
ORDER BY HireDate ASC
--BaiTap3--
--Lay ma khach hang co thue hoac ma khu vuc bi NULL--
SELECT CustomerID
FROM dbo.Customers
WHERE Fax IS NULL OR PostalCode IS NULL;
--BaiTap4--
--Tinh gia tri trung binh cua phi van chuyen ma ShippedDate khong NULL--
SELECT AVG(Freight) AS 'AVG of Freight'
FROM dbo.Orders
WHERE ShippedDate IS NOT NULL;
--BaiTap5--
--Lay ra 1000 nhan vien khong co so dien thoai xem theo thanh pho giam dan--
SELECT TOP 1000 *
FROM dbo.Employees
WHERE HomePhone IS NULL
ORDER BY  City DESC
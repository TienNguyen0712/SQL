--Vidu1--
--Loc ra cac don hang co dieu kien--
--CauA: Don hang duoc giao den Germany, UK, Brazil--
--Dung IN--
SELECT * 
FROM dbo.Orders
WHERE ShipCountry IN ('Germany', 'UK', 'Brazil');
--Dung OR--
SELECT *
FROM dbo.Orders
WHERE ShipCountry = 'Germany' OR ShipCountry = 'UK' OR ShipCountry = 'Brazil';
--CauB: Don hang duoc giao den cac quoc gia khac Germany, UK, Brazil--
SELECT *
FROM dbo.Orders
WHERE ShipCountry NOT IN ('Germany','UK', 'Brazil');
--Vidu2--
--Lay ra cac san pham co ma the loai khac voi 2, 3, 4
SELECT *
FROM dbo.Products
WHERE CategoryID NOT IN (2,3,4);
--Vidu3--
--CauA: Liet ke cac nhan vien khong phai là nu--
SELECT EmployeeID, 'FullName' = FirstName + ' ' + LastName, TitleOfCourtesy
FROM dbo.Employees
WHERE TitleOfCourtesy NOT IN ('Ms.', 'Mrs.');
--CauB: Liet ke cac nhan vien la nu--
SELECT EmployeeID, 'FullName' = FirstName + ' ' + LastName, TitleOfCourtesy
FROM dbo.Employees
WHERE TitleOfCourtesy IN ('Ms.', 'Mrs.');
--BaiTap1--
--Lay tat ca cac khach hang den tu thanh pho Berlin, London, Warszawa--
SELECT *
FROM dbo.Customers
WHERE City IN ('Berlin','London', 'Warszawa');
--BaiTap2--
--Liet ke danh sach cac don hang duoc van chuyen trong khoang thoi gian tu--
--1996-07-07 den 1996-07-31 va duoc van chuyen bang tau thuy (3)--
SELECT *
FROM dbo.Orders
WHERE ShippedDate BETWEEN '1996-07-07' AND '1996-07-31' AND ShipVia = 3
--BaiTap3--
--Liet ke danh sach cac don hang duoc van chuyen den thanh pho Genève, Lyon, Oulu--
SELECT *
FROM dbo.Orders
WHERE ShipCity IN ('Genève', 'Lyon', 'Oulu');
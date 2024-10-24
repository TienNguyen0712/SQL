--Liet ke tat ca cac nhan vien den tu thanh pho London--
--Vidu1--
SELECT * 
FROM dbo.Employees
WHERE City = 'London';
--Liet ke tat ca nhan vien tu thanh pho London--
--Sap xep ket qua theo ( LastName A -> Z )--
SELECT *
FROM dbo.Employees
WHERE City = 'London'
ORDER BY LastName ASC;
--Liet ke tat ca don hang bi giao muon, biet rang--
--ngay can giao hang la "RequiredDate"--
--ngay giao hang thuc te la "ShippedDate"--
--Vidu2--
SELECT *
FROM dbo.Orders
WHERE RequiredDate < ShippedDate;
--So luong cac don hang bi giao muon biet rang--
--ngay can giao hang la "RequiredDate"--
--ngay giao hang thuc te la "ShippedDate"--
--Vidu3--
SELECT COUNT (*) AS "So luong hang giao muon"
FROM dbo.Orders
WHERE RequiredDate < ShippedDate;
--Lay ra tat ca cac don hang chi tiet duoc--
--giam gia nhieu hon 10%--
--Vidu4--
SELECT *
FROM dbo.[Order Details]
WHERE Discount > 0.1;
--Liet ke tat ca cac don hang duoc gui den "France"--
--BaiTap1--
SELECT *
FROM dbo.Orders
WHERE ShipCountry = 'France'
--Liet ke cac san pham co so luong hang trong kho--
--lon hon 20--
--BaiTap2--
SELECT *
FROM dbo.Products
WHERE UnitsInStock > 20;
--Liet ke cac khach hang khong o thanh pho "Paris"
--BaiTap3--
SELECT *
FROM dbo.Customers
WHERE City <> 'Paris';
--Liet ke tat ca khach hang co dia chi o "London"--
--va duoc sap xep tang dan theo ma khach hang--
--BaiTap4--
SELECT *
FROM dbo.Customers
WHERE City = 'London'
ORDER BY CustomerID ASC;
--Lay 10 dong dau cua tat ca cac san pham ton kho lon hon 10--
--BaiTap5--
SELECT TOP 10 *
FROM dbo.Products
WHERE UnitsInStock > 10;
--Lay tat ca san pham co so luong ton kho nho hon so luong--
--san pham dang duoc day hang--
--va duoc sap xep theo ma san pham giam dan--
--BaiTap6--
SELECT *
FROM dbo.Products
WHERE UnitsInStock < UnitsOnOrder
ORDER BY ProductID DESC;
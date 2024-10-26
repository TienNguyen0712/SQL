--Liet ke tat ca cac san pham co so luong trong kho--
--UnitsInStock thuoc khoang nho hon 50 hoac lon hon 100--
--Vidu1--
SELECT *
FROM dbo.Products
WHERE UnitsInStock < 50 OR UnitsInStock > 100;
--Liet ke tat ca cac don hang duoc giao den Brazil--
--da bi giao muon biet rang ngay can giao la RequiredDate--
--ngay giao hang thuc te la ShippedDate--
--Vidu2--
SELECT *
FROM dbo.Orders
WHERE ShipCountry = 'Brazil' AND RequiredDate < ShippedDate;
--Lay ra tat ca san pham co gia duoi 100$ va ma the loai khac 1--
--Dung NOT--
--Vidu3--
SELECT *
FROM dbo.Products 
WHERE NOT (UnitPrice >= 100 OR CategoryID = 1);
--Nguoc lai voi Vidu3--
SELECT *
FROM dbo.Products 
WHERE UnitPrice >= 100 OR CategoryID = 1;
--Liet ke tat ca cac don hang co gia van chuyen Freight--
--trong khoang [50, 100] do la--
--BaiTap1--
SELECT *
FROM dbo.Orders 
WHERE Freight >= 50 AND Freight <= 100;
--liet ke cac san pham co so luong hang trong kho--
--UnitsInStock lon hon 20 va so luong hang trong don hang--
--UnitsOnOrder nho hon 20--
--BaiTap2--
SELECT *
FROM dbo.Products 
WHERE UnitsInStock > 20 AND UnitsOnOrder < 20;
--Tim ra nhan vien khong phai o USA va chi lay 5 hang dau--
--sap xep theo thu tu LastName tuwf A-Z vaf tao ra cot FullName--
--BaiTap3--
SELECT TOP 5 *, FirstName + ' ' + LastName AS 'FullName'
FROM dbo.Employees
WHERE NOT (Country = 'USA')
ORDER BY LastName ASC;
--Liet ke hang khong ai dat--
--BaiTap4--
SELECT *
FROM dbo.Products 
WHERE UnitsInStock <> 0 AND UnitsOnOrder = 0;
--Liet ke san pham het hang nhung van co nguoi dat--
--Dung NOT--
--BaiTap5--
SELECT *
FROM dbo.Products 
WHERE NOT (UnitsInStock > 0 AND UnitsOnOrder = 0);
--Liet ke khac hang o France va Brazil--
--BaiTap6--
--Dung NOT--
SELECT *
FROM dbo.Customers 
WHERE NOT (Country <> 'Brazil' AND Country <> 'France');
--Khong dung NOT
SELECT *
FROM dbo.Customers 
WHERE Country = 'Brazil' AND Country = 'France';




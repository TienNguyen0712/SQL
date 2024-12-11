--BaiTap1--
--Tu bang Products va Categories hay tim ra cac san pham thuoc danh muc Seafood--
--in ra cac thong tin sau--
--Ma the loai--
--Ten the loai--
--Ma san pham--
--Ten san pham--
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Products p, dbo.Categories c
WHERE p.CategoryID = c.CategoryID AND c.CategoryName = 'Seafood';
--BaiTap2--
--Tu bang Products va Suppliers hay tim cac san pham thuoc duoc cung cap--
--tu nuoc Germany--
--Ma nha cung cap--
--Quoc gia--
--Ma san pham--
--Ten san pham--
SELECT s.SupplierID, s.Country, p.ProductID, p.ProductName
FROM dbo.Products p, dbo.Suppliers s
WHERE p.SupplierID = s.SupplierID AND s.Country = 'Germany';
--BaiTap3--
--Tu 3 bang Customers, Orders, Shippers hay in ra cac thong tin sau day--
--Ma don hang--
--Ten khach hang--
--Ten cong ty van chuyen--
--Va chi in ra cac don hang cua cac khach hang den tu thanh pho 'London'--
SELECT o.OrderID, c.ContactName, s.CompanyName
FROM dbo.Customers c, dbo.Orders o, dbo.Shippers s
WHERE c.CustomerID = o.CustomerID AND o.ShipVia = s.ShipperID AND c.City = 'London';
--BaiTap4--
--Tu 3 bang Orders, Customers, Shippers hay in ra cac thong tin sau--
--Ma don hang--
--Ten khach hang--
--Ten cong ty van chuyen--
--Ngay yeu cau chuyen hang--
--Ngay giao hang--
--Va chi in ra don hang bi giao muon--
SELECT o.OrderID, c.ContactName, s.CompanyName, o.RequiredDate, o.ShippedDate
FROM dbo.Customers c, dbo.Orders o, dbo.Shippers s
WHERE c.CustomerID = o.CustomerID AND o.ShipVia = s.ShipperID 
		AND o.RequiredDate < o.ShippedDate;
--BaiTap5--
--Tu 3 bang Orders, Customers, Shippers hay in ra cac thong tin sau--
--Ma don hang--
--Ten dat nuoc giao hang--
--so don hang giao--
--In ra nuoc co hang lon hon 100--
SELECT COUNT(o.OrderID) AS 'TotalOrders', o.ShipCountry
FROM dbo.Orders o, dbo.Customers c
WHERE o.CustomerID = c.CustomerID AND c.City <> 'United STates' AND ShipCountry <> 'USA'
GROUP BY o.ShipCountry
HAVING COUNT(o.OrderID) > 100;
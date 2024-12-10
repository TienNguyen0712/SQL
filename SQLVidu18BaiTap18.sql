--Vidu1--
--Tu bang 'Product' va 'Categories' lay ra cac thong tin sau--
--Ma the loai--
--Ten the loai--
--Ma san pha,--
--Ten san pham--
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Products AS p, dbo.Categories AS c
WHERE c.CategoryID = p.CategoryID;
--Vidu2--
--Tu bang Employees va Orders, in ra cac thong tin--
--Ten nhan vien--
--So luong don hang ma nhan vien da ban duoc--
SELECT e.FirstName + ' ' + e.LastName AS 'FullName', COUNT(o.OrderID) AS 'TotalOrders'
FROM dbo.Orders AS o, dbo.Employees AS e
WHERE o.EmployeeID = e.EmployeeID
GROUP BY e.LastName, e.FirstName;
--Vidu3--
--Tu bang Customers va Orders in ra cac thong tin sau--
--Ma so khach hang--
--Ten cong ty--
--Ten lien he--
--So luong don da mua--
--Voi dieu kien quoc gia cua khach hang la UK--
SELECT c.CustomerID, c.CompanyName, c.ContactName, COUNT(o.OrderID) AS 'TotalOrders'
FROM dbo.Customers AS c, dbo.Orders AS o
WHERE c.CustomerID = o.CustomerID AND c.Country = 'UK'
GROUP BY c.CustomerID, c.CompanyName, c.ContactName;
--Vidu4--
--Tu bang Orders va Shippers in ra cac thong tin sau day--
--Ma nha van chuyen--
--Cong ty van chuyen--
--Tong so tien duoc van chuyen--
--In ra theo thu tu tong so tien van chuyen giam dan--
SELECT s.ShipperID, s.CompanyName ,SUM(o.Freight) AS 'TotalFreight'
FROM dbo.Orders AS o, dbo.Shippers AS s
WHERE o.ShipVia = s.ShipperID 
GROUP BY s.ShipperID, s.CompanyName
ORDER BY SUM(o.Freight) DESC;
--Vidu5--
--Tu bang Products va Suppliers hay in ra cac thong tin sau--
--Ma nha cung cap--
--Ten cong ty--
--Tong cac san pham khac nhau da cung cao--
--In ra duy nhat 1 nha cung cao co so luong san pham khac nhau nhieu nhat--
SELECT TOP 1 s.SupplierID, s.CompanyName, COUNT(p.ProductID) AS 'TotalProducts'
FROM dbo.Products AS p, dbo.Suppliers AS s
WHERE s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, S.CompanyName
ORDER BY COUNT(p.ProductID) DESC;
--Vidu6--
--Tu bang Orders va Orders Detail in ra cac thong tin--
--Ma don hang--
--Tong so tien san pham cua don hang do--
SELECT o.OrderID, SUM(od.UnitPrice*od.Quantity) AS 'TotalPrices'
FROM dbo.Orders AS o, dbo.[Order Details] AS od
WHERE o.OrderID = od.OrderID
GROUP BY o.OrderID;
--Tu bang bang Order Details Orders va Employees in ra cac thong tin sau--
--Ma don hang--
--Ten nhan vien--
--Tong so tien san pham cua don hang--
SELECT o.OrderID, e.FirstName + ' ' + e.LastName AS 'FullName', SUM(od.UnitPrice * od.Quantity) AS 'TotalPrices' 
FROM dbo.[Order Details] AS od, dbo.Orders AS o, dbo.Employees AS e
WHERE od.OrderID = o.OrderID AND e.EmployeeID = o.EmployeeID
GROUP BY o.OrderID, e.FirstName, e.LastName;
--BaiTap1--
--Tu 3 bang Customers, Orders, Shippers hay in ra cac thong tin sau--
--Ma don hang--
--Ten khach hang--
--Ten cong ty van chuyen--
--Chi in ra ca don hang duoc giao den UK trong nam 1997--
SELECT o.OrderID, c.ContactName, s.CompanyName
FROM dbo.Customers AS c, dbo.Orders AS o, dbo.Shippers AS s
WHERE s.ShipperID = o.ShipVia AND c.CustomerID = o.CustomerID AND o.ShipCountry = 'UK' AND YEAR(ShippedDate) = 1997;
--BaiTap2--
--Tu 2 bang Products va Orders Details ịn ra thong tin sau--
--Ma don hang--
--Ma san pham--
--Ten san pham--
--Tong tien moi don hang--
SELECT od.OrderID, p.ProductID, p.ProductName, SUM(od.UnitPrice*od.Quantity) AS 'TotalPrices'
FROM dbo.Products AS p, dbo.[Order Details] AS od
WHERE od.ProductID = p.ProductID
GROUP BY od.OrderID, p.ProductID, p.ProductName
--BaiTap3--
--Dua ra don hang co gia cao nhat tu 2 bang Orders va Order Details--
SELECT TOP 1 o.OrderID ,SUM(od.UnitPrice * od.Quantity) AS 'MaxPrice'
FROM dbo.Orders AS o, dbo.[Order Details] AS od
WHERE o.OrderID = od.OrderID
GROUP BY o.OrderID
ORDER BY SUM(od.UnitPrice * od.Quantity) DESC;


--CAU LENH INNER JOIN--
--Vidu1--
--Su dung INNER JOIN hay in ra cac thong tin sau day--
--Ma don hang--
--Ten cong ty khach hang--
SELECT o.OrderID, c.CompanyName
FROM dbo.Orders o
INNER JOIN dbo.Customers c
ON o.CustomerID = c.CustomerID;
--Vidu2--
--Su dung INNER JOIN tu bang Products va Categories in ra cac thong tin sau--
--Ma the loai--
--Ten the loai--
--Ma san pham--
--Ten san pham--
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Products p
INNER JOIN dbo.Categories c 
ON p.CategoryID = c.CategoryID;
--Vidu3--
--Su dung INNER JOIN tu bang Products va Categories hay dua ra cac thong tin sau--
--Ma the loai--
--Ten the loai--
--So luong san pham--
SELECT c.CategoryID ,c.CategoryName ,COUNT(p.ProductID) AS 'TotalProducts'
FROM dbo.Products p 
INNER JOIN dbo.Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName;
--CAU LENH LEFT JOIN--
--Vidu1--
--Tu bang Products va Categories lay ra cac thong tin sau--
--Ma the loai--
--Ten the loai--
--Ten san pham--
--voi INNER JOIN va LEFT JOIN
--Voi INNER JOIN--
SELECT c.CategoryID, c.CategoryName
FROM dbo.Products p
INNER JOIN dbo.Categories c 
ON p.CategoryID = c.CategoryID;
--Voi LEFT JOIN--
SELECT c.CategoryID, c.CategoryName
FROM dbo.Categories c 
LEFT JOIN dbo.Products p 
ON p.CategoryID = c.CategoryID;
--Vidu2--
--Dung LEFT JOIN lay ra cac thong tin sau--
--Ma the loai--
--Ten the loai--
--So luong san pham--
SELECT c.CategoryID ,c.CategoryName ,COUNT(p.ProductID) AS 'TotalProducts'
FROM dbo.Categories c
LEFT JOIN dbo.Products p 
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName;
--Voi RIGHT JOIN--
--Dung RIGHT JOIN hay lay ra cac thong tin sau day--
--Ma don hang--
--Ten cong ty khach hang va dem xem co bao nhieu don hang duoc cac khach hang do giao--
SELECT c.CompanyName, COUNT(o.OrderID)
FROM dbo.Orders o
RIGHT JOIN dbo.Customers c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName
--Voi FULL JOIN--
--Dung FULL JOIN--
--Tu bang Products va bang Categories hay in ra cac thong tin sau--
--Ma the loai--
--Ten the loai--
--Ma san pham--
--Ten san pham--
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Products p
FULL JOIN dbo.Categories c 
ON p.CategoryID = c.CategoryID;
--BáiTap1--
--Hay liet ke ten cac nhan vien va ten khach hang cua cac don hang trong Orders--
SELECT o.OrderID, e.FirstName + ' ' + e.LastName AS 'FullName', c.ContactName 
FROM dbo.Orders o
INNER JOIN dbo.Employees e 
ON o.EmployeeID = e.EmployeeID
INNER JOIN dbo.Customers c
ON o.CustomerID = c.CustomerID;
--BaiTap2--
--Hay liet ke ten nha cung cap va ten san pham cua cac san pham trong bang Products--
--bao gom ca cac san pham khong co nha cung cap--
SELECT s.ContactName, p.ProductName
FROM dbo.Suppliers s
LEFT JOIN dbo.Products p
ON s.SupplierID = p.SupplierID;
--BaiTap3--
--Hay liet ke ten khach hang va ten don hang cua cac don hang trong bang Orders bao--
--gom ca cac khach hang khong co don hang--
SELECT c.ContactName, o.OrderID
FROM dbo.Customers c
RIGHT JOIN dbo.Orders o
ON c.CustomerID = o.CustomerID;
--BaiTap4--
--Hay liet ke ten cac danh muc va ten nha cung cap cua cac san pham--
--trong bang Products bao gom ca danh muc va nha cung cap khong co san pham--
SELECT c.CategoryName , s.CompanyName
FROM dbo.Categories c
FULL JOIN dbo.Products p
ON c.CategoryID = p.CategoryID
FULL JOIN dbo.Suppliers s
ON s.SupplierID = p.SupplierID
--BaiTap5--
--Liet ke ten Shipper thanh pho cua shipper do va nhung thanh pho ma shipper do da giao--
SELECT s.CompanyName, o.ShipCity, e.City
FROM dbo.Shippers s
INNER JOIN dbo.Orders o
ON o.ShipVia = s.ShipperID
INNER JOIN dbo.Employees e
ON e.EmployeeID = o.EmployeeID;
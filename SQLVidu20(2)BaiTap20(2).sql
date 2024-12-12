--BaiTap1--
--Dung INNER JOIN liet ke ten san oham va ten nha cung cap cua cac san pham--
--da duoc dat hang trong bang Order Details ke hop bang nay voi cac bang lien quan--
--de lay thon tin san pham va nha cung cap--
SELECT DISTINCT od.ProductID, p.ProductName, s.CompanyName
FROm dbo.[Order Details] od
INNER JOIN dbo.Products p
ON p.ProductID = od.ProductID
INNER JOIN dbo.Suppliers s
ON p.SupplierID = s.SupplierID;
--BaiTap2--
--Liet ke ten khach hang va ten nhan vien phu trach cua cac don hang trong bang Orders--
--Bao gom don hang khong co nhan vien phu trach--
--Dung LEFT JOIN de lay thong tin ve khach hang va nhan vien phu trach--
SELECT o.OrderID ,c.CompanyName ,e.FirstName + ' ' + e.LastName AS 'FullName'
FROM dbo.Orders o
LEFT JOIN dbo.Employees e
ON o.EmployeeID = e.EmployeeID
LEFT JOIN dbo.Customers C
ON o.CustomerID = c.CustomerID;
--BaiTap3--
--Liet ke ten khach hang va ten nhan vien phu trach cua cac don hang trong bang Orders--
--Bao gom don hang khong co nhan vien phu trach--
--Dung RIGHT JOIN de lay thong tin ve khach hang va nhan vien phu trach--
SELECT o.OrderID ,c.CompanyName ,e.FirstName + ' ' + e.LastName AS 'FullName'
FROM dbo.Orders o
RIGHT JOIN dbo.Employees e
ON o.EmployeeID = e.EmployeeID
RIGHT JOIN dbo.Customers C
ON o.CustomerID = c.CustomerID;
--BaiTap4--
--Liet ke ten danh muc va ten nha cung cap cua cac san pham trong bang Products--
--Bao gom ca cac danh muc va nha cung cap khong co san pham--
--Su dung FULL JOIN hoac ket hop LEFT JOIN va RIGHT JOIN de lay thong tin--
--va danh muc va nha cung cap--
SELECT c.CategoryName, p.ProductName, s.CompanyName, p.ProductID
FROM dbo.Products p
FULL JOIN dbo.Categories c
ON p.CategoryID = c.CategoryID
FULL jOIN dbo.Suppliers s
ON s.SupplierID = p.SupplierID;
--Baitap5--
--Liet ke ten khach hang va ten san pham da dươc dat hang trong bang Orders--
--va Order Details. Dung INNER JOIN de lay thong tin khach hang va san pham duoc dat hang--
SELECT c.CompanyName, p.ProductName
FROM dbo.[Order Details] od
INNER JOIN dbo.Orders o
ON o.OrderID = od.OrderID
INNER JOIN dbo.Products p
ON p.ProductID = od.ProductID
INNER JOIN dbo.Customers c
ON c.CustomerID = o.CustomerID;
--BaiTap6--
--Liet ke ten nhan vien va ten khach hang cua cac don hang trong bang Orders--
--Bao gom ca cac don hang khong vo nhan vien hoac khach hang tuong ung--
--Su dung FULL JOIN hoac ket họp LEFT JOIN va RIGHT JOIN de ket hop bang de lay thong tin
--ve nhan vien va khach hang--
SELECT e.FirstName + ' ' + e.LastName AS 'FullName', s.CompanyName 
FROM dbo.Orders o
FULL JOIN dbo.Employees e
ON e.EmployeeID = o.EmployeeID
FULL JOIN dbo.Customers s
ON o.CustomerID = s.CustomerID
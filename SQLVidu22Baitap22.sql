--Vidu1--
SELECT * -- Thuc hiẹn thu tu 2
FROM dbo.Products; --Thuc hien thu tu 1
--Vidu2--
SELECT ProductID, ProductName -- Thuc hien thu tu 3
FROM dbo.Products -- Thuc hien thu tu 1
WHERE CategoryID = 1; -- Thuc hien thu tu 2
--Vidu3--
SELECT COUNT(p.ProductID) AS 'TotalProducts' -- Thuc hien thu tu 4
FROM dbo.Products p -- Thuc hien thu tu 1
WHERE p.CategoryID IN (1, 2, 3) -- Thuc hien thu tu 2
GROUP BY p.CategoryID; --Thuc hien thu tu 3
--Vidu4--
SELECT COUNT(p.ProductID) AS 'TotalProducts' -- Thuc hien thu tu 5
FROM dbo.Products p -- Thuc hien thu tu 1
WHERE p.CategoryID IN (1, 2, 3) -- Thuc hien thu tu 2
GROUP BY p.CategoryID --Thuc hien thu tu 3
HAVING COUNT(p.ProductID) >= 13; -- Thuc hien thu tu 4 
--Khong thuc hien duoc 'TotalProducts' vi chua ton tai--
--Vidu5--
SELECT COUNT(p.ProductID) AS 'TotalProducts' -- Thuc hien thu tu 5
FROM dbo.Products p -- Thuc hien thu tu 1
WHERE p.CategoryID IN (1, 2, 3, 4) -- Thuc hien thu tu 2
GROUP BY p.CategoryID --Thuc hien thu tu 3
HAVING COUNT(p.ProductID) >= 10 -- Thuc hien thu tu 4
ORDER BY TotalProducts ASC; --Thu hien 6
--Thuc hien duoc 'TotalProducts' da ton tai nen thuc hien duoc--
--BaiTap1--
SELECT /**Thuc hien thu tu 7**/ TOP /**Thuc hien thu tu 9**/ 3 p.ProductID, od.Discount, o.ShipCountry 
FROM dbo.Products p --Thuc hien thu tu 1
INNER JOIN dbo.[Order Details] od --Thuc hien thu tu 2
ON p.ProductID = od.ProductID -- Thuc hien thu tu 3
INNER JOIN dbo.Orders o -- Thuc hien thu tu 4
ON o.OrderID = od.OrderID -- Thuc hien thu tu 5
WHERE od.Discount = 0.25 AND o.ShipCountry = 'Germany' --Thuc hien thu tu 6
ORDER BY p.ProductID DESC; --Thuc hien thu tu 8
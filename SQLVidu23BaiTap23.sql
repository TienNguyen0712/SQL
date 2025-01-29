--Vidu1-- 
WITH ShortEmployess AS (
	--Cau lenh CTE--
	SELECT EmployeeID, LastName, FirstName
	FROM dbo.Employees
)

SELECT * FROM ShortEmployess;
--Vidu2--
--Su dung cau lenh CTE lay ra thong tin ve cac san pham (Products)--
--co cung the loai voi mot san pham cu the--
WITH ProductCategory AS (
	SELECT Categories
	FROM dbo.Products
	WHERE ProductName = 'Name'
)
SELECT p.ProductName, p.CategoryID
FROM Products AS p
JOIN ProductCategory AS PC ON p.CategoryID = PC.CategoryID;
--Vidu 3--
--Lay thong tin ve don hang (Orders) cung voi tong gia tri don hang va ty le--
--giua tonh gia tri va phi giao hang--
WITH OP AS (
	SELECT SUM(Quantity*UnitPrice) AS 'Total', OrderID	FROM dbo.[Order Details]
	GROUP BY OrderID
) --otx AS (--Tao them 1 bang tam thoi moi va them dau "," de tao)--

SELECT o.OrderID, o.OrderDate, o.Freight, op.Total, op.Total/o.Freight
FROM dbo.Orders AS o
JOIN OP	op ON OP.OrderID = o.OrderID;
--BaiTap1--
--Su dung CTE tinh tong doanh so ban hang cho tung san pham tu hai bang Order Details va Product--
WITH OTotals AS (
	SELECT SUM(UnitPrice*Quantity) AS 'Total', ProductID
	FROM dbo.[Order Details]
	GROUP BY ProductID
)

SELECT p.ProductID, p.ProductName, ot.Total
FROM dbo.Products as p
JOIN OTotals AS ot ON ot.ProductID = p.ProductID
--BaiTap2--
--Su dung CTE tinh tong doanh so ban hang theo tung khach hang va sau do sap xep theo tong doanh so giam dan--
WITH OTotals_1 AS (
	SELECT SUM(od.UnitPrice*od.Quantity) AS 'Total', o.CustomerID
	FROM dbo.[Order Details] AS od, dbo.Orders AS o 
	WHERE od.OrderID = o.OrderID
	GROUP BY o.CustomerID
)

SELECT c.CustomerID, c.ContactName, ot1.Total
FROM dbo.Customers as c
JOIN OTotals_1 AS ot1 ON ot1.CustomerID = c.CustomerID
ORDER BY OTotals_1 DESC
--BaiTap3--
--Su dung CTE tinh tong doanh so ban hang theo nam tu bang Orders va OrderDetails
WITH OTotals_2 AS (
	SELECT SUM(UnitPrice*Quantity) AS 'Total', OrderID
	FROM dbo.[Order Details]
	GROUP BY OrderID
)

SELECT o.OrderID, SUM(YEAR(o.ShippedDate)), ot2.Total
FROM dbo.Orders AS o
JOIN OTotals_2 AS ot2 ON ot2.OrderID = o.OrderID
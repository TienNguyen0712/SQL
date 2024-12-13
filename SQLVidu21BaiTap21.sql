--Vidu1--
--Liet ke toan bo san pham trong Products--
SELECT ProductID, ProductName, UnitPrice
FROM dbo.Products;
--Tinh trung binh gia san pham trong bang Products--
SELECT AVG(UnitPrice) AS 'AVGOfPrices' 
FROM dbo.Products;
--Loc nhung san pham co gia > gia trung binh--
SELECT ProductID, ProductName, UnitPrice
FROM dbo.Products
WHERE UnitPrice > (
	SELECT AVG(UnitPrice)
	FROM dbo.Products	
);
--Vidu2--
--Loc ra nhung khach hang co so don hang > 10
SELECT c.CustomerID, c.CompanyName, COUNT(O.OrderID) AS 'TotalOrders'
FROM dbo.Customers c
LEFT JOIN dbo.Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName
HAVING COUNT(o.OrderID) > 10;
--Sub Query--
SELECT *
FROM dbo.Customers
WHERE CustomerID IN (	
	SELECT CustomerID
	FROM dbo.Orders
	GROUP BY CustomerID
	HAVING COUNT(OrderID) > 10
);
--Vidu3--
--Tinh tong tien cho tung don hang--
SELECT o.*, (
	SELECT SUM(od.Quantity * od.UnitPrice) AS 'Totals'
	FROM dbo.[Order Details] od
	WHERE o.OrderID = od.OrderID
) AS 'Totals'
FROM dbo.Orders o
--Loc ra ten san pham va tong so don hang cua san pham--
SELECT ProductName, TotalOrders
FROM (
	SELECT p.ProductID, p.ProductName, (
			SELECT COUNT(*)
			FROM dbo.[Order Details] od
			WHERE p.ProductID = od.ProductID
		) AS 'TotalOrders'
	FROM dbo.Products p) AS TEMP;
--BaiTap1--
--Hay in ra Ma don hang va tong gia tri cua don hang do--
SELECT o.OrderID, o.Freight, (
	SELECT ROUND(SUM(od.Quantity * od.UnitPrice - od.Discount),2)
	FROM dbo.[Order Details] od
	WHERE od.OrderID = O.OrderID
) AS 'TotalOrders'
FROM dbo.Orders o;
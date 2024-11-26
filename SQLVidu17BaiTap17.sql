--Vidu1--
--Liet ke nhung khach hang nao da dat nhieu hon 20 don hang--
--sap xep theo thu tu tong so don hang giam dan--
SELECT CustomerID, COUNT(OrderID) AS 'TotalOrder'
FROM dbo.Orders
GROUP BY CustomerID 
HAVING COUNT(OrderID) > 20
ORDER BY COUNT(OrderID) DESC;
--Vidu2--
--Loc ra nhung nha cung cap san pham co tong so luong hang ton--
--lon hon 30, va co tring binh don gia co gia tri duoi 50--
SELECT SupplierID, SUM(UnitsInStock) AS 'TotalInStock',
		AVG(UnitPrice) AS 'AVGOfPrice'
FROM dbo.Products 
GROUP BY SupplierID
HAVING SUM(UnitsInStock) > 30 AND AVG(UnitPrice) < 50;
--Vidu3--
--Tong so tien van chuyen cua tung thang, trong nua nam sau cua 1996--
--sap xep theo thang tang dan--
SELECT MONTH(ShippedDate) AS 'Month', SUM(Freight) AS 'TotalFreight'
FROM dbo.Orders
WHERE YEAR(ShippedDate) = 1996
GROUP BY MONTH(ShippedDate)
HAVING MONTH(ShippedDate) >= 6
ORDER BY MONTH(ShippedDate) ASC
--BaiTap1--
--Loc ra nhung thanh pho co so luong don hang lon hon 16--
--va sap xep theo tong so luong giam dan--
SELECT	ShipCity, COUNT(OrderID) AS 'TotalOrder'
FROM dbo.Orders
GROUP BY ShipCity
HAVING COUNT(OrderID) > 16
ORDER BY COUNT(OrderID) DESC
--BaiTap2--
--Lay danh sach cac san pham co tong so luong lon hon 75--
-- va co ty le gia trung binh 7%--
SELECT ProductID, SUM(Quantity) AS 'TotalOfQuantity', AVG(Discount) AS 'AVGOfDiscount'
FROM dbo.[Order Details]
GROUP BY ProductID
HAVING SUM(Quantity) > 75 AND AVG(Discount) > 0.07
ORDER BY AVG(Discount) DESC
--BaiTap3--
--Lay danh sach cac quoc gia ten co chua ky tu 'e' va 'a' co tong so luong--
--cac thanh pho lon hon 2 va tong so luong khach hang nho hon 10, sap xep--
--ten cac quoc gia theo thu tu alphabet--
SELECT COUNT(City) AS 'NumberOfCity', Country,COUNT(CustomerID) AS 'TotalOfCustomer'
FROM dbo.Customers
WHERE Country LIKE '%[e,a]%'
GROUP BY Country
HAVING COUNT(City) > 2 AND COUNT(CustomerID) < 10
ORDER BY Country ASC;
--BaiTap4--
--Loc ra nhung san pham co tong so luong hang trong kho lon hon 100--
--va sap xep giam dan theo tong so luong--
SELECT ProductID ,SUM(UnitsInStock) AS 'TotalInStock' 
FROM dbo.Products
GROUP BY ProductID
HAVING SUM(UnitsInStock) > 100
ORDER BY SUM(UnitsInStock) DESC;
--BaiTap5--
--Loc ra nhung don hang duoc giao den London va co tong so tien van chuyen--
--lon hon 50, sap xep giam dan tong so tien van chuyen--
SELECT OrderID, SUM(Freight) AS 'TotalOfFreight'
FROM dbo.Orders
WHERE ShipCity = 'London'
GROUP BY OrderID
ORDER BY SUM(Freight) DESC

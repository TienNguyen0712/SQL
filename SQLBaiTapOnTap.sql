--BaiTap1--
--Nhung khach hang da dat nhieu hon 20 don hang--
--sap xep theo thu tu tong so don hang giam dan--
SELECT CustomerID ,COUNT(OrderID) AS 'TotalOrders'
FROM dbo.Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 20
ORDER BY COUNT(OrderID) DESC;
--BaiTap2--
--Loc ra nhan vien co tong so don hang lon hon hoac bang 100--
--sap xep thep tong so don hang giam dan--
SELECT EmployeeID, COUNT(OrderID) AS 'TotalOrders'
FROM dbo.Orders
GROUP BY EmployeeID
HAVING COUNT(OrderID) = 100 OR COUNT(OrderID) > 100
ORDER BY COUNT(OrderID) DESC;
--BaiTap3--
--Co nhung the loai nao co so san pham khac nhau lon hon 11--
SELECT CategoryID, COUNT(ProductID) AS 'TotalProducts' 
FROM dbo.Products
GROUP BY CategoryID
HAVING COUNT(ProductID) > 11
--BaiTap4--
--The loai nao co tong so luong san pham trong kho lon hon 350--
SELECT  CategoryID, SUM(UnitsInStock) AS 'TotalUnitsInStock'
FROM dbo.Products
GROUP BY CategoryID
HAVING SUM(UnitsInStock) > 350;
--BaiTap5--
--Quoc gia nao co nhieu hon 7 don hang--
SELECT ShipCountry, COUNT(OrderID) AS 'TotalOrders'
FROM dbo.Orders 
GROUP BY ShipCountry
HAVING COUNT(OrderID) > 7;
--BaiTap6--
--Nhung ngay co nhieu hon 5 don hang duoc giao, sap xep tăng dan theo ngày giao hang--
SELECT COUNT(OrderID) AS 'TotalOrders' , ShippedDate 
FROM dbo.Orders
GROUP BY ShippedDate
HAVING COUNT(OrderID) > 5
ORDER BY ShippedDate ASC;
--BaiTap7--
--Hay cho biet nhung quoc gia bat dau bang chu 'A' hoac 'G' va co so luong don hang lon hon 29--
SELECT ShipCountry, COUNT(*) AS 'TotalOrders' 
FROM dbo.Orders
WHERE ShipCountry LIKE 'A%' OR ShipCountry LIKE 'G%'
GROUP BY ShipCountry
HAVING COUNT(*) > 29;
--BaiTap8--
--Hay cho biet nhung thanh pho nao co so luong don hang giao la khac 1 va 2--
--ngay dat hang tu ngay '1997-04-01' den ngay '1997-08-31'--
SELECT ShipCity, COUNT(*) AS 'TotalOrders'
FROM dbo.Orders
WHERE ShippedDate BETWEEN '1997-04-01' AND '1997-08-31'
GROUP BY ShipCity
HAVING COUNT(*) NOT IN (1, 2);
--BaITap9--
--Loc ra cac don hang duoc giao den London bi tre--
--sap xep theo ngay giao hang giam dan--
SELECT RequiredDate, ShippedDate
FROM dbo.Orders
WHERE RequiredDate < ShippedDate AND ShipCity = 'London'
GROUP BY RequiredDate, ShippedDate
ORDER BY ShippedDate DESC;
--BaiTap10--
--Cho biet co bao nhieu khach hang co ten bat dau bang chu cai 'B'--
SELECT COUNT(*) AS 'TotalsCustomerID'
FROM dbo.Customers
WHERE CustomerID LiKE 'B%';

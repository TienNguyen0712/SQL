--Vidu1--
--Cho biet moi khach hang da dat bao nhieu don hang--
SELECT CustomerID, COUNT(OrderID) AS 'TotalOrders'
FROM dbo.Orders
GROUP BY CustomerID;
--Vidu2--
--Tinh don gia trung binh cho moi nha cung cap--
SELECT SupplierID, AVG(UnitPrice) AS 'AVG Of Price'
FROM dbo.Products
GROUP BY SupplierID;
--Vidu3--
--Moi the loai co tong bao nhieu trong kho--
SELECT CategoryID, SUM(UnitsInStock) AS 'TotalOfProductInStock' 
FROM dbo.Products
GROUP BY CategoryID;
--Vidu4--
--Cho biet gia van chuyen cao nhat va thap nhat cua cac don hang--
--theo tung thanh pho va quoc gia khac nhau--
SELECT ShipCity, ShipRegion, 
		MAX(Freight) AS 'MaxOfShip', 
		MIN(Freight) AS 'MinOfShip'
FROM dbo.Orders
WHERE ShipRegion IS NOT NULL
GROUP BY ShipCity, ShipRegion
ORDER BY ShipCity ASC, ShipRegion ASC;
--BaiTap1--
--Thong ke so luong nhan vien theo tung quoc gia khac nhau--
SELECT Country, COUNT(EmployeeID) AS 'TotalCountOfEmployees'
FROM dbo.Employees
GROUP BY Country;
--BaiTap2--
--Tinh tong so tien van chuyen o tung thanh pho va quoc gia--
--Chi kay ShipName co chu b--
--Sap xep theo A-Z cua ShipCountry--
SELECT ShipCity, ShipCountry,
		SUM(Freight) AS 'TotalOfFreight'
FROM dbo.Orders
WHERE ShipName LIKE '%b%' 
GROUP BY ShipCity, ShipCountry
ORDER BY ShipCountry ASC
--BaiTap3--
--Tim tong so luong hang ban ra, so luong lon nhat va nho hat theo--
--loai san phan, sap xep theo tong so luong san pham--
SELECT ProductID ,SUM(Quantity) AS 'TotalOfOrders',
		MAX(Quantity) AS 'MAXOrder',
		MIN(Quantity) AS 'MINOrder'
FROM dbo.[Order Details]
GROUP BY ProductID
ORDER BY TotalOfOrders DESC;
--BaiTap4--
--Tong doanh thu cua tung khach hang--
SELECT CustomerID, SUM(Freight) AS 'TotalOfFreight'
FROM dbo.Orders
GROUP BY CustomerID;
--BaiTap5--
--Tong so khach hang theo tung quoc gia va thanh pho-
--săp xep quoc gia tu A-Z--
--Va so luong hang ton theo nha cung cap--
SELECT City, Country, COUNT(CustomerID) AS 'TotalOfCustomer',
		SupplierID, SUM(UnitsInStock) AS 'TotalProductInStock'
FROM dbo.Customers, dbo.Products
GROUP BY City, Country, SupplierID
ORDER BY Country ASC;

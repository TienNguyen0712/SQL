--Vidu1--
--Tinh so luong don hang trong nam 1997 cua tung khach hang--
SELECT CustomerID, COUNT(OrderID) AS 'TotalOfOrders',
		YEAR(OrderDate) AS 'Year'
FROM dbo.Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY YEAR(OrderDate), CustomerID;
--Vidu2--
--Loc ra tat ca cac don hang duoc dat hang vao thang 5 nam 1997--
SELECT *
FROM dbo.Orders
WHERE YEAR(OrderDate) = 1997 AND MONTH(OrderDate) = 5;
--Vidu3--
--Lay ra don hang duoc dat vao ngay 4 thang 9 nam 1996--
--su dung DAY-MONTH-YEAR--
SELECT *
FROM dbo.Orders
WHERE DAY(OrderDate) = 4 AND MONTH(OrderDate) = 9 AND YEAR(OrderDate) = 1996;
--Vidu4--
--Lay danh sach khach hang dat hang trong nam 1998--
--va so don hanh moi thang sap xep thang tang dan--
SELECT CustomerID, COUNT(OrderID) AS 'TotalOrders', 
		MONTH(OrderDate) AS 'Month' 
FROM dbo.Orders
WHERE YEAR(OrderDate) = 1998
GROUP BY CustomerID, MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC;
--BaiTap1--
--Loc cac don hang da duoc giao vao thang 5--
--sap xep tang dan theo nam--
SELECT OrderID, YEAR(OrderDate) AS 'Year'
FROM dbo.Orders
WHERE MONTH(OrderDate) = 5
GROUP BY OrderID, YEAR(OrderDate)
ORDER BY YEAR(OrderDate) ASC;
--BaiTap2--
--Lay ra nhung nhan vien co nam sinh 1966--
SELECT *
FROM dbo.Employees
WHERE YEAR(BirthDate) = 1966;
--BaiTap3--
--Lay ra danh sach don hang duoc dat vao nam 1997--
--tim ra so luong don hang theo cac phuong thuc--
--van chuyen khac nhau--
SELECT ShipVia, COUNT(*) AS 'TotalOrders',
		MONTH(OrderDate) AS 'Month'
FROM dbo.Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY ShipVia, MONTH(OrderDate)
ORDER BY ShipVia ASC, MONTH(OrderDate) ASC;
--BaiTap4--
--Loc ra ten khach hang, ten thanh pho, tong tien--
--ten khach hang phai co chu H va thang la thang 8 hoan thanh giao do hang--
--sap xeptheo phi giam dan--
SELECT CustomerID, SUM(Freight) AS 'TotalFreight', 
		ShipCity AS 'City'
FROM dbo.Orders 
WHERE CustomerID LIKE '%H%' AND MONTH(RequiredDate) = 8
GROUP BY CustomerID, ShipCity
ORDER BY SUM(Freight) DESC;
--BaiTap5--
--Liet ke nhan vien sinh vao thang 1 va sap xep ngay theo thu tu giam dan--
SELECT *
FROM dbo.Employees
WHERE MONTH(BirthDate) = 1
ORDER BY DAY(BirthDate) DESC;
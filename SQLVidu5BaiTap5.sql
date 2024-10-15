--Dem so luong khach hang trong bang Customers--
--Vidu1--
--Cach1--
SELECT COUNT (*) AS "So luong khach hang"
FROM dbo.Customers; 
--Cach2--
SELECT COUNT ([CustomerID]) AS [NumberOfCustomers]
FROM [dbo].[Customers];
--Tinh tong so tien van chuyen Freight cua tat ca cac don dat hang--
--Vidu2--
SELECT SUM (Freight) AS "Tong so tien van chuyen"
FROM dbo.Orders;
--Tinh trung binh so luong dat hang Quantity cua tat ca cac san pham--
--trong bang Orders Detail--
--VIdu3--
SELECT AVG (Quantity) AS "Trung binh so luong don dat hang"
FROM dbo.[Order Details];
--Dem so luong, tinh tong hang trong kho, trung binh gia cua cac san pham--
--trong bang Products--
--Vidu4--
SELECT COUNT (*) AS "So luong hang ton kho",
	   SUM (UnitsInStock) AS "Tong hang tron kho",
	   AVG (UnitPrice) AS "Trung binh gia"
FROM dbo.Products;
--Dem so luong don hang tu bang Orders theo 2 cach--
--BaiTap1--
--Cach1--
SELECT COUNT (*) AS "So luong don hang"
FROM dbo.Orders;
--Cach2--
SELECT COUNT (OrderID) AS "So luong don hang"
FROM dbo.Orders;
--Tu bang Order Details tinh trung binh cot UnitPrice--
--Tinh tong cho cot Wuantity--
--BaiTap2--
SELECT AVG (UnitPrice) AS "Trung binh cong",
       SUM  (Quantity) AS "Tong"
FROM dbo.[Order Details];
--Tim so luong ten dia chi o bang Customers--
--BaiTap3--
SELECT COUNT (Address) AS "So luong ten dia chi"
FROM dbo.Customers;
--Dem so luong bang tu bang Customers--
--BaiTap4--
SELECT COunt (*) AS "So luong khach hang"
FROM dbo.Customers;
--Tinh tong hang da duoc dat UnitOnOrder trong bang Products--
--BaiTap5--
SELECT SUM (UnitsOnOrder) AS "Tong hang duoc dat"
FROM dbo.Products;
--Tinh trung binh so luong hang duoc dat UnitOnOrder trong bang Products--
--BaiTap6--
SELECT AVG (UnitsOnOrder) AS "Trung binh cong hang duoc dat"
FROM dbo.Products;

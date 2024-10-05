--Lay ra ten cua cac quoc gia khac nhau trong bang Customer--
--Vidu1--
SELECT DISTINCT Country
FROM dbo.Customers;
--Lay ra ten ma so buu dien (PosalCode) tu bang Suppliers
--Vidu2--
SELECT DISTINCT PostalCode 
FROM dbo.Suppliers
--Lay ra ten goi cua nhan vien va ten goi--
--lich su cua nhan vien tu bang Employees--
--Vidu3--
SELECT DISTINCT LastName,TitleOfCourtesy
FROM dbo.Employees;
--Lay ra ten goi lich su khac nhau cua nhan vien trong--
--Bang Employees--
--Vidu4
SELECT DISTINCT TitleOfCourtesy
FROM dbo.Employees;
--Lay ra ma don vi van chuyen (Ship Via) tu bang Orders--
--BaiTap1
SELECT DISTINCT ShipVia
FROM dbo.Orders;
--Lay ra thanh pho khac nhau tu bang khach hang--
--BaiTap2--
SELECT DISTINCT City
FROM dbo.Customers;
--Lay ra ten san pham va gia khac nhau cua san pham do--
--BaiTap3--
SELECT DISTINCT ProductName,UnitPrice
FROM dbo.Products;

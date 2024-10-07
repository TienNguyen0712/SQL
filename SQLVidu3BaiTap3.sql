--Lay "CompanyName" va dat ten thay the la "Cong ty"--
--Lay "PostalCode" va dat ten thay the la "Ma buu dien"--
--Vidu1--
SELECT CompanyName AS "Ten cong ty",
		PostalCode AS "Ma buu dien",
		City "Thanh pho"
FROM dbo.Customers;
--Lay ra "LastName" va dat ten thay the la "Ten"--
--Lay ra "FirstName" va dat ten thay  the la "Ho"--
--Vidu2--
SELECT FirstName AS "Ho",
		LastName AS "Ten"
FROM dbo.Employees;
--Lay ra 15 dong dau tien tat ca cac cot trong "Orders"--
--Dat ten thay the cho bang la "o"--
--Vidu3--
SELECT TOP 15 o.*
FROM dbo.Orders AS "o";
--Lay ra cot "ProductName", "SupplierID", "CategoryID"--
--Dat ten thay the lan luot la "Ten san pham", "Ma nha cung cap", "Ma the loai"--
--Dat ten thay the cho bang "Products" la "p"--
--Lay ra 5 san pham dau tien trong bang--
--BaiTap1--
SELECT TOP 5 p.* --Lay 6 san pham--
FROM dbo.Products AS "p";
SELECT ProductName AS "Ten san pham",
		SupplierID AS "Ma nha cung cap",
		CategoryID AS "Ma the loai"
FROM dbo.Products;
--Lay ra cot "ContractName", "CustomerID", "Address"--
--Dat ten thay the lan luot la "Ten nha giao dich", "Ma khach hang", "Dia chi"--
--Dat ten thay the cho bang "Customers" la "c"--
--Lay ra 10 khach hang dau tien trong bang--
--BaiTap2--
SELECT TOP 10 c.*
FROM dbo.Customers AS "c";
SELECT ContactName AS "Ten nha giao dich",
		CustomerID AS "Ma khach hang",
		Address AS "Dia chi"
FROM dbo.Customers;
--Lay ra cot "Region", "Photo", "BirthDate"--
--Dat ten thay the lan luot la "Quoc tich", "Hinh anh", "Ngay thnag nam sinh"--
--Dat ten thay the cho bang "Employees" la "e"--
--Lay ra 20 nhan vien dau tien trong bang--
--BaiTap3--
SELECT TOP 20 e.*
FROM dbo.Employees AS "e";
SELECT Region AS "Quoc tich",
		Photo AS "Hinh anh",
		BirthDate AS "Ngay thang nam sinh"
FROM dbo.Employees ;

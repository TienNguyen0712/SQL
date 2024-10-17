--Liet ke tat ca cac nha cung cap theo ten CompanyName--
--Tu A-Z--
--Vidu1--
SELECT *
FROM dbo.Suppliers
ORDER BY CompanyName;
--Liet ke tat ca san pham theo gia giam dan trong bang Product--
--Vidu2--
SELECT ProductID AS "Ma san pham", 
	   ProductName AS "Ten san pham", 
	   UnitPrice AS "Gia san pham"
FROM dbo.Products
ORDER BY UnitPrice DESC;

SELECT *
FROM dbo.Products
ORDER BY UnitPrice;
--Liet ke tat ca cac nhan vien theo thu tu ten va ho--
--Tu A-Z--
--Vidu3--
SELECT *
FROM dbo.Employees
ORDER BY LastName, FirstName;
--Lay ra san pham co so luong ban cao nhat--
--Vidu4--
SELECT TOP 1 *
FROM dbo.[Order Details]
ORDER BY Quantity DESC;
--Liet ke danh sach cac don dat hang trong bang Orders--
--Theo thu tu giam dan cua bang cua ngay dat hang--
--BaiTap1--
SELECT *
FROM dbo.Orders
ORDER BY OrderDate DESC;
--Liet ke ten, don gia, so luong hang ton kho--
--cua tat ca cac san pham trong bang Products--
--theo thu tu giam dan cua hang ton kho--
--BaiTap2--
SELECT ProductName AS "Ten san pham",
		UnitPrice AS "Gia san pham",
		UnitsInStock AS "Hang ton kho"
FROM dbo.Products
ORDER BY UnitsInStock DESC;
--Liet ke cac thanh pho cua nhan vien theo thu tu tu A-Z--
--BaiTap3--
SELECT City AS "Ten thanh pho"
FROM dbo.Employees
ORDER BY City;
--Nhan vien duoc tuyen dau tien trong cong ty--
--Khong dung MAX - MIN--
--BaiTap4--
SELECT TOP 1 LastName AS "Ten",
		FirstName AS "Ho",
		HireDate AS "Ngay lam"
FROM dbo.Employees
ORDER BY HireDate;
--San pham ngung san xuat theo thu tu tang dan--
--BaiTap5--
SELECT *
FROM dbo.Products
ORDER BY Discontinued;
--Lay cot chua ten san pham tu bang san pham--
--Vidu1--
SELECT [ProductName]
FROM [dbo].[Products];
--Lay ten san pham, gia tren moi don vi, so luong san pham--
--Vidu2--
SELECT [ProductName], [UnitPrice], [QuantityPerUnit]
FROM [dbo].[Products];
--Lay ra ten khach hang va quoc gia cua khach hang do--
--Vidu3--
SELECT [CompanyName], [Country]
FROM [dbo].[Customers];
--Co the bo di dau ngoac vuong truoc cot va bang duoc goi--
--BaiTap1--
--Lay ra ten va so dien thoai cua nha cung cap hang--
SELECT CompanyName, Phone
FROM dbo.Suppliers;
--Cau lenh lay tat ca cac cot--
--Lay het tat ca cac cot cua bang Products--
--ViDu1--
SELECT *
FROM dbo.Products;
--Lay tat ca du lieu tu bang khach hang--
--ViDu2--
SELECT *
FROM dbo.Customers;
--Lay tat ca du lieu tu bang nha cung cap--
SELECT *
FROM dbo.Suppliers;
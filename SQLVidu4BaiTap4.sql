-- Tim gia tri thap nhat cua cac san pham trong bang "Products"--
--Vidu1--
SELECT MIN (UnitPrice) AS "Min_Price" --Dat ten thay the cho cot la "Min_Price"
FROM dbo.Products;
--Lay ra ngay dat hang gan day nhat tu bang "Orders"--
--VIdu2--
SELECT MAX (OrderDate) AS "Ngay dat hang gan day"
FROM dbo.Orders;
--Tim raso luong hang ton kho nhieu nhat--
--Vidu3--
SELECT MAX (UnitsInStock) AS "So luong hang ton kho nhieu nhat"
FROM dbo.Products;
--Tim ra tuoi doi cua nhan vien lon nhat trong cong ty--
--Ngay thang nam sinh nho nhat la tuoi lon nhat--
--BaiTap1--
SELECT MIN (BirthDate) AS "Ngay thang nam it nhat cua nhan vien"
FROM dbo.Employees;
--Tim ra tuoi cua nhan vien nho nhat trong cong ty--
--Ngay thang nam sinh lon nhat trong cong ty--
--BaiTap2--
SELECT MAX (BirthDate) AS "Ngay thang nam lon nhat cua nhan vien"
FROM dbo.Employees;
--Tim ra ngay Orders som nhat cua san pham--
--BaiTap3--
SELECT MAX (OrderDate) AS "Ngay som nhat"
FROM dbo.Orders;
--Tim ra ngay Giao hang lau nhat cua san pham--
--BaiTap4--
SELECT MIN (ShippedDate) AS "Ngay giao hang lau nhat"
FROM dbo.Orders;
--Loc ra tat ca cac khach hang den tu cac quoc gia ( Country ) bat dau bang 'A'--
--Vidu1--
SELECT *
FROM dbo.Customers
WHERE Country LIKE 'A%';
--Lay danh sac cac don dat duoc gui den cac thanh pho co chu 'a'--
--Vidu2--
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE '%a%';
--Loc ra tat ca cac don hang dieu kien co U_ va U%--
--Vidu3--
SELECT *
FROM dbo.Orders
WHERE ShipCountry LIKE 'U_' AND ShipCountry LiKE 'U%';
--Lay ra tat ca cac nha cung cap hang co chu 'b'--
--trong ten cong ty--
--BaiTap1--
SELECT *
FROM dbo.Suppliers
WHERE CompanyName LIKE '%b%';
--Liet ke nhan vien ho va ten voi e cuoi ten lot va--
--sinh nam 1952-01-01 den 1962-12-31--
--Xep tu A-Z--
--Liet ke 4 nguoi dau tien--
--BaiTap2--
SELECT TOP 4 FirstName + '' + LastName AS 'Ho va ten'
FROM dbo.Employees
WHERE BirthDate BETWEEN '1952-01-01' AND '1962-12-31' AND LastName Like '%e%'
ORDER BY LastName ASC;
--Lay ra ten thanh pho cua nhan vien co chu 'a' trong ten doanh nghiep---
--BaiTap3--
SELECT City AS 'Thanh pho'
FROM dbo.Employees
WHERE LastName Like '%a%';
--Lay ra nhom 10 nhan vien co ky tu thu 3 la 's' trong TitleOfCourtesy--
--BaiTap4--
SELECT *
FROM dbo.Employees
WHERE TitleOfCourtesy Like '_s%';
--Liet ke nhung san pham co ten bao gom chu B--
--co gia > 10 USD va co ma cung ap tu 10-59--
--Sap theo gia tang dan--
--BaiTap5--
SELECT *
FROM dbo.Products
WHERE SupplierID BETWEEN '10' AND '50' AND UnitPrice > 10 AND ProductName LIKE '%B%'
ORDER BY UnitPrice ASC;
--Liet ke ten san pham co ly tu "C" o dau va ky tu "e" o cuoi trong bang Products
--BaiTap6--
SELECT ProductName AS "Ten san pham" 
FROM dbo.Products
WHERE ProductName LIKE 'C%' AND ProductName LIKE '%e';
--Liet ke danh sach cac Suppliers co so dien thoai--
--Co chua so 4 va co duoi 22--
--BaiTap7--
SELECT *
FROM dbo.Suppliers
WHERE Phone LIKE '%4%' AND Phone LIKE '%22';



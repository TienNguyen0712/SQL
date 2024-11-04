--Loc khach hang co ten lien he bat dau bang chu 'A'--
--Vidu1--
SELECT *
FROM dbo.Customers
WHERE ContactName LIKE 'A%';
--Loc ra tat ca khach hang co ten lien he bat dau bang--
--chu 'H' va co chu thu 2 la bat ky chu nao--
--Vidu2--
SELECT *
FROM dbo.Customers
WHERE ContactName LIKE 'H_%';
--Loc ra tat ca cac don hang duoc gui den thanh pho--
--co chu cai bat dau la L chu cai thu hai la u hooac o--
--Vidu3--
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE 'L[u, o]%';
--Loc ra tat ca cac don hang duoc gui den thanh pho--
--co chu cai bat dau la L chu cai thu hai khong la--
--u hoac o--
--Vidu4--
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE 'L[^u, o]%';
--Loc tat ca cac don hang duoc gui den thanh pho--
--co chu cai bat dau la L chu cai thu hai la cac ky tu--
--tu a den e--
--Vidu5--
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE 'L[a-e]%';
--Lay ra cac nha cung cap hang cho ten cong ty bat dau bang A--
--va khong chu ky tu b--
--BaiTap1--
SELECT * 
FROM dbo.Suppliers
WHERE CompanyName LIKE 'A[^b]%';
--Lay ra tat ca khach hang co ten lien he bat dau bang chu A den D--
--BaiTap2--
SELECT *
FROM dbo.Customers
WHERE ContactName LIKE '[A-D]%';
--Lay ra tat ca cac don dat co dat nuoc van chuyen bat dau bang U--
--va ky tu thu 2 khong rong--
--BaiTap3--
SELECT *
FROM dbo.Orders
WHERE ShipCountry LIKE 'U[^]%';
--Lay tat ca ca don hang  duoc gui den thanh pho co chu cac ky tu dac biet--
--ky tu dac biet khong nam trong bang chu cai 26 chu--
--BaiTap4--
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE '%^[A-Z], [a-z]%';
--Lay ra don hang bat dau bang A va ket thuc bang B--
--BaiTap5--
SELECT * 
FROM dbo.Orders
WHERE CustomerID LIKE '%[A-B]';
--Lay 6 nhan vien den tu nuoc bat dau bang U ky tu thu 2 la s--
--Sap xep nguoi lam lau nhat, va lay ra ho va ten--
--BaiTap6--
SELECT TOP 7 FirstName + '' + LastName AS "Ho va ten",
			HireDate AS 'Ngay bat dau lam'
FROM dbo.Employees
WHERE Country LIKE 'U[s]%'
ORDER BY HireDate ASC;
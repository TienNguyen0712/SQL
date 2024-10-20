--Tinh so luong hang ton kho sau khi ban het--
--san oham da dat hang--
--StockRemaining = UnitsInStock - UnitsOnOrder--
--Vidu1--
SELECT ProductID AS "Ma san pham",
		ProductName AS "Ten san pham",
		UnitsInStock AS "Hang trong kho",
		UnitsOnOrder AS "Hang da dat",
		UnitsInStock - UnitsOnOrder AS "Hang ton trong kho"
FROM dbo.Products;
--Gia tri don hang chi tiet cho tat ca cac san pham--
--trong bang OrderDetails--
--OrderDetailsValues = UnitsPrice * Quantity--
--Vidu2--
SELECT *, 
		UnitPrice * Quantity AS "Gia tri don hang trong kho"
FROM dbo.[Order Details];
--Ty le gia van chuyen don dat hang ( Freight) trung binh cua cac don--
--hang trong bang Orders so voi gia tri van chuyen cua don hang lon nhat--
--( MaxFreight )--
--FreightRatio = AVG( Freight )/MAX(Freight)--
--Vidu3--
SELECT (AVG(Freight)/MAX(Freight))*100 AS "Ty le gia van chuyen"
FROM dbo.Orders; 
--Liet ke danh sach cac san pham va gia ( UnitPrice) cua tung san pham--
--neu duoc giam di 10%--
--BaiTap1--
--Cach1-Chi dung phep nhan va chia--
SELECT *, 
	(UnitPrice * 90)/100 AS "Gia sau giam 10%"
FROM dbo.Products;
--Cach2-Chi dung phep nhan--
SELECT *, 
	UnitPrice * 0.9 AS "Gia sau giam 10%"
FROM dbo.Products;
--Gia van chuyen trung binh ( Freight ) cua cac don dat hang--
--Dung phep tinh va khong dung ham tinh trung binh--
--BaiTap2--
SELECT SUM(Freight)/COUNT(OrderID) AS "Gia van chuyen trung binh"
FROM dbo.	Orders;
--Tong so tien mua hang sau khi duoc giam--
--BaiTap3--
SELECT SUM(UnitPrice*0.9) AS "Tong tien sau giam 10%"
FROM dbo.Products;
--Ti le trung binh cua gia tien tung san pham va hang duoc dat trong Products--
--BaiTap4--
SELECT AVG(UnitPrice)/AVG(UnitsOnOrder) AS "Ti le trung binh gia voi hang dat"
FROM dbo.Products;
--Tinh tong gia tri cua don hang duoc dat trong bang Products--
--BaiTap5--
SELECT SUM(UnitPrice) * SUM(UnitsOnOrder) AS "Tong gia tri cua don hang duoc dat"
FROM dbo.Products;


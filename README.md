# Lưu trữ các bài tập ví dụ về SQL
## Phần 1: 
  Về `SELECT` và `FROM` các lệnh lấy từ bảng các cột nếu "*" tức lấy tất cả cột của bảng đó
```SQL
SELECT tên cột 1, tên cột 2,..
FROM tên của bảng;
```
## Phần 2: 
  Về `SELECT DISTINCT` và FROM các lệnh lấy từ bảng ra các cột có các dữ liệu khác nhau của     
bảng đó nếu lấy từ hai cột giống nhau nhưng có 1 cột dữ liệu bị trùng mà cột kia không có   
thì cũng xem như là khác nhau hoàn toàn
```SQL
SELECT DISTINCT tên cột 1, tên cột 2,..
FROM tên của bảng;
```
  Ngoài ra muốn lấy N dòng đầu tiên ta dùng `SELECT TOP`
```SQL
SELECT TOP N tên cột 1, tên cột 2,..
FROM tên của bảng;
```
## Phần 3: Bí danh hay tên thay thế `ALIAS_NAME`
  Được hiểu là tên thay thế hay bí danh   
và khi gọi đến tên thì hiểu là tên của nó  
  Đặt tên thay thế cho cột giúp cho việc đọc vè hiểu câu lệnh SQL dễ dàng hơn  
```SQL
SELECT tên cột AS tên thay thế, hay bí danh
FROM tên của bảng;
```
  Tương tự cũng có thể đặt tên thay thế cho 1 bảng
```SQL
SELECT tên các cột
FROM tên bảng AS tên thay thế cho bảng;
```
## Phần 4: Tìm giá trị lớn nhất và giá trị nhỏ nhất


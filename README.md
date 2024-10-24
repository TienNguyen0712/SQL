# Lưu trữ các bài tập ví dụ về SQL
## Phần 1: Lấy dữ liệu từ bảng cho trước
  Về `SELECT` và `FROM` các lệnh lấy từ bảng các cột nếu "*" tức lấy tất cả cột của bảng đó
```SQL
SELECT tên cột 1, tên cột 2,..
FROM tên của bảng;
```
## Phần 2: Lấy cột có dữ liệu khác nhau ( duy nhất)
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
  Trong dữ liệu để tìm giá tị lớn nhất và nhỏ nhất để có thẻ so sánh
cũng như đưa ra các quyết định đúng đắn so lớn nhất và nhỏ nhát    
VD : Thi => Trao huy chương    
     Gừi lãi xuất ngân hàng => Lựa chọn ngân hàng phù hợp 
```SQL
SELECT MIN (tên của cột muốn tìm giá trị nhỏ nhất)
FROM tên của bảng;
```
```SQL
SELECT MAX (tên của cột muốn tìm giá trị lớn nhất)
FROM tên của bảng;
```
* Có thể kết hợp cùng với từ khóa `ALIAS` để đổi tên cho cột 
```SQL
SELECT MAX (tên của cột muốn tìm giá trị lớn nhất) AS "Tên thay thế"
FROM tên của bảng;
```
```SQL
SELECT MIN (tên của cột muốn tìm giá trị nhỏ nhất) AS "Tên thay thế"
FROM tên của bảng;
```
## Phần 5: Tìm số lần đếm, tổng, giá trị trung bình    
  Giúp cho việc quẩn lý kiếm soát số liệu, phân tích một cách chính xác và trực quan     
* Hàm đếm   
```SQL
SELECT COUNT (tên của cột) --Đếm dữ liệu khác NULL--
FROM tên của bảng;
```
Dùng hàm `COUNT (*)` để đếm xem trong bảng có bao nhiêu bản ghi
số lượng dòng trong bảng được chọn     
```SQL
SELECT COUNT (*)
FROM tên của bảng;
```
* Hàm cộng   
```SQL
SELECT SUM (tên của cột) --Các dòng tính tổng thì phải luôn có giá trị--    
FROM tên của bảng;
```
* Hàm tính trung bình cộng    
```SQL
SELECT AVG (tên của cột) -- Bỏ qua các giá trị NULL--
FROM tên của bảng;
```   
## Phần 6: Sắp xếp kết quả trả về khi gọi một câu lệnh truy vấn
 So sánh cũng như đánh giá sắp xép các kết quả trả về từ một câu truy vấn giúp việc đánh giá xem xét chính xác và chi tiết hơn 
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tển của bảng
ORDER BY tên cột 1, tên cột 2, ... ASC|DESC;
```
* `ASC`: Là sắp xếp tăng dần ( Mặc định nếu không ghi )
* `DESC`: Là sắp xếp giảm dần 
## Phần 7: Các toán tử `+` `-` `*` `/` `%` trong SQL
  Để thực hiện các phép tính trong SQL ta chỉ đơn giản sử dụng các toán tử Toán học
```SQL
-- [toán từ] là các dấu ( + - * \ % ) -- 
SELECT tên côt 1  [toán từ]  tên cột 2, ...
FROM tên của bảng;
```
* Có thể kết hợp với các hàm `ALIAS` `COUNT` `MAX` `SUN` `AVG` để linh hoạt kết hợp các bài toán với nhau
## Phần 8: Lọc dữ liệu trong truy vấn
  Để truy vấn hay lọc theo một điều kiện nào đó ta sử dụng câu lệnh `WHERE` sử dụng trong các công việc tìm kiếm hay kiểm tra truy xuất những dữ liệu thỏa điều kiện mà ta nhập vào
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE diều kiện lọc;
```

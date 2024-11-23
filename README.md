# Lưu trữ các bài tập ví dụ về SQL
* Table of contents
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
* Lưu ý câu lệnh `ORDER BY` nằm sau mệnh đề câu lệnh `WHERE`
## Phần 9: Toán từ `AND` `OR` `NOT` trong SQL
  Để áp dụng trong việc tìm kiếm theo nhiều điều kiện khác nhau
* `AND` - Và 
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE điều kiện 1 AND diều kiện 2 AND điều kiện 3
```
Hiển thị một bản ghi nếu tất cả các điều kiện phân tách là `TRUE`
* `OR` - Hoặc
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE điều kiện 1 OR diều kiện 2 OR điều kiện 3
```
Hiển thị một bản ghi nếu có ít nhất 1 điều kiện được phân tách là `TRUE`
* `NOT` - Phủ định
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE NOT điều kiện 1;
```
Hiejn thị một bản ghi nếu điều kiện có giá trị là `FALSE`
## Phần 10: Toán từ `BETWEEN` trong SQL
  Chọn dữ liệu trong khoảng nhất định từ trong khoảng này đến khoảng kia
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE tên của cột `BETWEEN` giá trị bắt đàu AND giá trị kết thúc;
```
* Toán tử `BETWEEN` chọn các giá trị trong một phạm vi nhất định. Các giá
trị có thể là số, văn bản hay ngày tháng.
* Toán tử `BETWEEN` gồm giá trị bắt đầu và kết thúc.
## Phần 11: Toán tử `LIKE` lọc dữ liệu trong chuỗi   
 Chọn lọc hoặc tìm kiếm lựa chọn các từ khóa phù hợp chứa hay nằm trong   
những từ khóa tìm được
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE cột cần lọc chuỗi LIKE từ khóa cần lọc;
```
* Có hai ký tự đại diện thường được sử dụng chung với `LIKE`:
  * Dấu phần trăm `%` đại diện cho không, một hoặc nhiều ký tự
  * Dấu gạch dưới `_` đại diên cho một ký tự đơn
  ## Phần 12: `WILDCARD` ký tự đại diện
* Khi ta sử dụng toán tử `LIKE` thì lệnh này thường đi đôi vói nói
  * `%` :  Đại diện cho 0, 1 và rất nhiều ký tự
  * `_` : Đại diện cho 1 ký tự
  * `[]` : Trong dấu ngoặc vuông có thể đặt ký tự và sẽ đại diện 1 hay nhiều ký tự trong nó   
  * `^` : Tìm ra nhừng không lấy những ký tự sau `^`
  * `-` : Đại diện cho 1 khoảng từ đâu đến đâu và không chứa số bên trong
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE cột cần lọc theo điều kiện LIKE `Ký tự đại diện`;
```
## Phần 13: Tìm kiếm giá trị trong danh sách với `IN` và `NOT IN`
  Ta có thể chọn lọc nhiều các giá trị khác nhau chỉ bẳng cách dùng toán từ `IN` một lần khác với toán tử `OR` phải gọi nhiều lần
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE tên của cột cần tìm kiếm IN (giá trị 1, giá trị 2, ...);
```
* `IN` có chức năng tương tự như `OR`
* Cho phép tìm kiếm nhiều giá trị
* Ngược lại với toán tử `IN` ta có toàn từ `NOT IN`
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE tên của cột cần tìm kiếm `NOT IN` (giá trị 1, giá trị 2, ...);
```
* `NOT IN` tìm kiếm các cột không giống với giá trị
## Phần 14: Kiểm tra dữ liệu trong cột có `NULL` hay không
  Dữ liệu `NULL` là kiểu dữ liệu bị thiếu hay còn gọi là dữ liệu không tồn tại 
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE tên của cột cần kiềm tra IS NULL;
```
* Trả về cột có dữ liệu `NULL`
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE tên của cột cần kiềm tra IS NOT NULL;
```
* Trả vè cột dữ liệu không `NULL`
## Phần 15: Nhóm các dòng dữ liệu bằng `GROUP BY`
  Dùng để nhóm các dòng dữ liệu có cùng giá trị với nhau và thường dùng chung với các hàm như: `COUNT()` `MAX()` `MIN()` `SUM()` `AVG()`
```SQL
SELECT tên cột 1, tên cột 2, ...
FROM tên của bảng
WHERE đièu kiện
GROUP BY tên cột cần nhóm 1, tên cột cần nhóm 2, ...
ORDER BY tên cột cán sắp xếp theo 1, tên cột cần sáp xếp theo 2, ...
```
## Phần 16: Hàm láy Ngày, Tháng, Năm
* Dùng hàm `DAY` để lấy dữ liệu là ngày
```SQL
SELECT DAY('năm-tháng-ngày thời gian')
--Trả về giá trị ngày--
```
* Dùng hàm `MONTH` để lấy dữ liệu là tháng
```SQL
SELECT MONTH('năm-tháng-ngày thời gian')
--Trả vè giá trị tháng--
```
* Dùng hàm `YEAR` để lấy dữ liệu là năm
```SQL
SELECT YEAR('năm-tháng-ngày thời gian')
--Trả về giá trị năm--
```

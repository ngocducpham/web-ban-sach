# Vinabook
> Đồ án môn học đồ án công nghệ thông tin

Vinabook là ứng dụng web dùng để mua sách online sửa dụng Java EE để phát triển.

## Cài đặt
Project yêu cầu những thành phần dưới đây để khởi động
1. [IDE Intellij](https://www.jetbrains.com/idea/)
2. [Apache Tomcat](https://tomcat.apache.org/index.html)
3. [Adopt Open JDK](https://adoptopenjdk.net/)
4. [MySQL](https://www.mysql.com/)

### 1. Tạo project
Tại cửa sổ tạo project của Intellij chọn `Get from VCS` → Nhập `https://github.com/ngocducpham/web-ban-sach/` vào ô URL → Nhấn chọn `Clone`

### 2. Thiết lập môi trường
1. Ở góc phía trên bên phải chọn `Add Configuration` 
2. Trên cửa sổ vừa xuất hiện nhấn chọn `Add new`. Kéo xuống chọn `TomEE Server mục Local`
3. Ở góc dưới cùng bên phải nhấp chọn `Fix` → Chọn `*:was exploded` → `OK`

### 3. Nạp cơ sở dữ liệu
Chạy file script `Database-Script.sql` được lưu trong project

## Chạy project
Click vào nút Run hoặc dùng tổ hợp phím `Shift + F10`

## Thành viên nhóm
<a href="https://github.com/ngocducpham/web-ban-sach/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=ngocducpham/web-ban-sach" />
</a>

## Licensing
The code in this project is licensed under MIT license.

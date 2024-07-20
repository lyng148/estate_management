# SkyLand
SkyLand là một Website quản lý, cho thuê nhà đất. Được xây dựng và phát triển bằng Java, sử dụng Spring Boot làm framework chính.

Website DEMO:  https://linhng148.id.vn/
## Chức năng
### 1.User
- Xác thực người dùng
- Tìm kiếm tòa nhà theo yêu cầu
- Xem thông tin tòa nhà được cho thuê
### 2.Manager
- Tìm kiếm tòa nhà theo 16 tiêu chí
- Thêm, sửa, xóa, xem thông tin tòa nhà
- Giao tòa nhà cho nhân viên quản lý
## Hướng dẫn chạy sản phẩm
### Yêu cầu hệ thống
- [OpenJDK 1.8](https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html)
- [Tomcat 8.5](https://tomcat.apache.org/download-80.cgi)
###  Cài đặt và chạy ứng dụng
Hướng dẫn này sử dụng Intelij IDEAD 2024.1 để khởi chạy
1. Sao chép repository:
   ```sh
   git clone https://github.com/lyng148/sun_apply.git
2. Import file SQL sử dụng MySQL lưu trong folder Database, chỉnh sửa thông tin kết nối DATABASE trong file application.properties:
```php

spring.datasource.url = URL database
spring.datasource.username = tài khoản
spring.datasource.password = mật khẩu

```
3. Trong Project Structure, thiết lập:
- SDK: 1.8 (OpenJDK)
- Language level: 8 - Lambdas. type annotations etc.
4. Trong Run/Debug Configuration, chọn Edit Configurations... 
![img.png](img.png)
Setup như hình dưới
![img_1.png](img_1.png)
5. Nhấn RUN để khởi chạy WEB, cửa sổ trình duyệt sẽ tự động mở ra, hoặc truy cập vào http://localhost:8081
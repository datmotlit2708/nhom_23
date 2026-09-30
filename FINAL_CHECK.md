# Kiểm tra bản cuối

- Giao diện: giữ nguyên `wwwroot/index.html` và kết nối REST API.
- Lưu dữ liệu nghiệp vụ: SQL Server thông qua Entity Framework Core.
- `localStorage`: không còn được sử dụng trong giao diện.
- Database model: Users, Customers, InsuranceProducts, Contracts, Payments, Claims, Notifications, AppSettings.
- Khóa ngoại: Contracts -> Customers/Products; Payments/Claims -> Contracts.
- CRUD: khách hàng, sản phẩm, hợp đồng; tạo/cập nhật phí; tạo/cập nhật bồi thường; cài đặt.
- Đăng nhập: ASP.NET Core API kiểm tra tài khoản.
- Dữ liệu demo: được seed khi database mới.
- Swagger: có cấu hình trong Development.
- Publish: có `publish.bat` cho Windows x64 self-contained.

Lưu ý triển khai thực tế: mật khẩu demo đang dùng SHA-256 để đơn giản hóa bài tập; hệ thống production nên dùng ASP.NET Core Identity/PasswordHasher và xác thực phiên/token.

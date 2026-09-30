# INSURE AI - ASP.NET Core + SQL Server

## 1. Công nghệ
- ASP.NET Core 8 Web API
- Entity Framework Core 8
- SQL Server / LocalDB
- HTML + CSS + JavaScript
- Swagger

## 2. Kiến trúc
Giao diện `wwwroot/index.html` gọi REST API `/api/*`.
ASP.NET Core xử lý nghiệp vụ, Entity Framework Core truy cập SQL Server.

## 3. Cơ sở dữ liệu
Mặc định dùng:
`(localdb)\\MSSQLLocalDB`

Database: `InsureAI`

Có thể chạy `Database/InsureAI.sql` bằng SQL Server Management Studio nếu muốn tạo database thủ công.

## 4. Chạy bằng Visual Studio 2022
1. Mở `InsureAI.sln` hoặc `InsureAI.csproj`.
2. Chọn HTTPS/HTTP profile `InsureAI`.
3. Build Solution.
4. Run (F5).
5. Lần chạy đầu, ứng dụng tự tạo database nếu chưa có và thêm dữ liệu demo.

## 5. Tài khoản demo
- admin / 123456
- tư vấn / 123456
- kế toán / 123456

## 6. API chính
- POST `/api/auth/login`
- GET/POST/PUT/DELETE `/api/customers`
- GET/POST/PUT/DELETE `/api/products`
- GET/POST/PUT/DELETE `/api/contracts`
- GET/POST/PUT `/api/payments`
- GET/POST/PUT `/api/claims`
- GET/PUT `/api/settings`
- GET/PUT `/api/notifications`
- GET `/api/dashboard/data`
- POST `/api/dashboard/reset`
- POST `/api/dashboard/restore`

## 7. Xuất file EXE
Có thể dùng file `publish.bat` để publish bản Windows x64 self-contained. File xuất hiện trong:
`bin\\Release\\net8.0\\win-x64\\publish\\`

Lưu ý: bản EXE vẫn cần SQL Server/LocalDB nếu dùng connection string hiện tại.

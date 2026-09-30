# Kiến trúc sau khi chuyển đổi

```text
Người dùng
   |
   v
Giao diện INSURE AI V4 (HTML/CSS/JavaScript)
   |
   | HTTP/JSON
   v
ASP.NET Core Web API
   |-- AuthController
   |-- CustomersController
   |-- ProductsController
   |-- ContractsController
   |-- PaymentsController
   |-- ClaimsController
   `-- SettingsController
   |
   v
Entity Framework Core / InsuranceDbContext
   |
   v
SQL Server (InsureAI)
```

## Quan hệ dữ liệu

Customers (1) ---- (N) Contracts
InsuranceProducts (1) ---- (N) Contracts
Contracts (1) ---- (N) Payments
Contracts (1) ---- (N) Claims

Dữ liệu nghiệp vụ trước đây nằm trong `localStorage` được chuyển thành các bảng SQL Server.
Giao diện vẫn giữ nguyên HTML/CSS/JS; chỉ thay lớp lưu trữ và đăng nhập bằng REST API.

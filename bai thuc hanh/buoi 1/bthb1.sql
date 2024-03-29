--1. tạo cơ sở dữ liệu
Create database QUANLY_NHANVIEN
Create database QUANLY_SINHVIEN

--2. Tạo login cho người dùng
exec sp_addlogin 'haoAdmin', '123456', 'QUANLY_SINHVIEN'
exec sp_addlogin 'haoUser', '123456', 'QUANLY_SINHVIEN'

--3. tạo người dùng với hai quyền admin và user để so sánh quyền truy cập vào cơ sở dữ liệu
create user dthAdmin for login haoAdmin
create user dthUser for login haoUser

--4. cấp quyền truy cập dữ liệu cho từng User
use QUANLY_NHANVIEN
go
exec sp_grantdbaccess 'haoAdmin'

grant select on dsGiangVien_View to dthUser
select * from dsGiangVien_View
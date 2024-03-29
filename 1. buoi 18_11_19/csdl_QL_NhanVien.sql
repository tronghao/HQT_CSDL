CREATE DATABASE QUANLY_NHANVIEN
GO

USE QUANLY_NHANVIEN
GO

CREATE TABLE PHONG
(
	MaPhong char(3),
	TenPhong nvarchar(40),
	DiaChi nvarchar(50),
	Tel char(10),
	PRIMARY KEY (MaPhong)
)
GO

CREATE TABLE DANHMUC_NN
(
	MaNN char(2),
	TenNN nvarchar(20),
	PRIMARY KEY (MaNN)
)
GO

CREATE TABLE NHANVIEN
(
	MaNV char(5),
	Ho nvarchar(20),
	TenLot nvarchar(20),
	Ten nvarchar(20),
	GioiTinh nvarchar(3),
	NgaySinh datetime,
	HeSoLuong Dec(4,3),
	MaPhong char (3),
	Tel char(10),
	NgayBC datetime,
	PRIMARY KEY (MaNV),
	FOREIGN KEY (MaPhong)REFERENCES PHONG(MaPhong)
)
GO

CREATE TABLE TRINHDO_NN
(
	MaNV char(5),
	MaNN char(2),
	TrDo char(2),
	PRIMARY KEY (MaNV, MaNN, TrDo)
)
GO


--Them du lieu bang PHONG
INSERT INTO PHONG VALUES('HCA', N'HC Tổng hợp', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585793') 
INSERT INTO PHONG VALUES('KDA', N'Kinh Doanh', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585794') 
INSERT INTO PHONG VALUES('KTA', N'Kỹ Thuật', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585795') 
INSERT INTO PHONG VALUES('QTA', N'Quản Trị', N'123,Phường 5, TP Trà Vinh, Trà Vinh','0743585796') 


--Them du lieu bang DANHMUC_NN
INSERT INTO DANHMUC_NN VALUES('01', N'Anh')
INSERT INTO DANHMUC_NN VALUES('02', N'Nga')
INSERT INTO DANHMUC_NN VALUES('03', N'Pháp')
INSERT INTO DANHMUC_NN VALUES('04', N'Nhật')
INSERT INTO DANHMUC_NN VALUES('05', N'Trung Quốc')
INSERT INTO DANHMUC_NN VALUES('06', N'Hàn Quốc')


--Them du lieu bang NHANVIEN
insert into NHANVIEN values('HC001', N'Nguyễn', N'Thị' , N'Hà', N'Nữ', '1950-02-27', 4.50, 'HCA', '', '1975-08-02')
insert into NHANVIEN values('HC002', N'Trần', N'Văn' , N'Nam', N'Nam', '1975-12-06', 3.00, 'HCA', '', '1977-08-06')
insert into NHANVIEN values('HC003', N'Nguyễn', N'Thanh' , N'Huyền', N'Nữ', '1978-03-07', 3.50, 'HCA', '', '1999-02-09')
insert into NHANVIEN values('KD001', N'Lê', N'Tuyết' , N'Anh', N'Nữ', '1977-03-02', 2.50, 'KDA', '', '2001-02-10')
insert into NHANVIEN values('KH002', N'Nguyễn', N'Anh' , N'Tú', N'Nam', '1942-04-07', 2.60, 'KDA', '', '1999-04-29')
insert into NHANVIEN values('KH003', N'Phạm', N'An' , N'Thái', N'Nam', '1977-09-05', 3.60, 'KDA', '', '1999-04-09')
insert into NHANVIEN values('KH004', N'Lê', N'Văn' , N'Hải', N'Nam', '1976-02-01', 2.70, 'KDA', '', '1997-04-09')
insert into NHANVIEN values('KH005', N'Nguyễn', N'Phương' , N'Minh', N'Nam', '1980-02-01', 3.00, 'KDA', '', '2001-02-10')
insert into NHANVIEN values('KT001', N'Trần', N'Đình' , N'Khâm', N'Nam', '1981-02-12', 2.70, 'KDA', '', '2005-10-01')
insert into NHANVIEN values('KT002', N'Nguyễn', N'Mạnh' , N'Hùng', N'Nam', '1980-06-08', 2.30, 'KDA', '', '2005-12-10')
insert into NHANVIEN values('KT003', N'Phạm', N'Thanh', N'Sơn', N'Nam', '1984-09-08', 2.00, 'KDA', '', '2005-11-17')
insert into NHANVIEN values('KT004', N'Vũ', N'Thị', N'Hoài', N'Nữ', '1980-05-12', 2.50, 'KDA', '', '2001-02-10')
insert into NHANVIEN values('KT005', N'Nguyễn', N'Thu', N'Lan', N'Nữ', '1977-05-10', 3.00, 'KDA', '', '2001-12-10')
insert into NHANVIEN values('KT006', N'Trần', N'Hoài', N'Nam', N'Nam', '1978-02-17', 2.80, 'KDA', '', '1997-08-16')
insert into NHANVIEN values('KT007', N'Hoàng', N'Nam', N'Sơn', N'Nam', '1940-03-12', 4.50, 'KDA', '', '1965-02-07')
insert into NHANVIEN values('KT008', N'Lê', N'Thu', N'Trang', N'Nữ', '1950-06-07', 4.50, 'KDA', '', '1968-02-08')
insert into NHANVIEN values('KT009', N'Khúc', N'Nam', N'Hải', N'Nam', '1980-02-07', 2.00, 'KDA', '', '2005-01-01')
insert into NHANVIEN values('KT010', N'Phùng', N'Trung', N'Dũng', N'Nam', '1978-08-08', 2.20, 'KDA', '', '1979-02-09')

--Them du lieu bang TRINHDO_NN
insert into TRINHDO_NN values('HC001','01','A');
insert into TRINHDO_NN values('HC001', '02' ,'B');
insert into TRINHDO_NN values('HC002','01','C');
insert into TRINHDO_NN values('HC002','03','C');
insert into TRINHDO_NN values('HC003','01','B2');
insert into TRINHDO_NN values('KD001','01','C');
insert into TRINHDO_NN values('KD001','02','B');
insert into TRINHDO_NN values('KD002','01','D');
insert into TRINHDO_NN values('KD002','02','A');
insert into TRINHDO_NN values ('KD003', '01', 'B');
insert into TRINHDO_NN values ('KD003', '02', 'C');
insert into TRINHDO_NN values ('KD004', '01', 'C');
insert into TRINHDO_NN values ('KD004', '04', 'A');
insert into TRINHDO_NN values ('KD004', '05', 'A');
insert into TRINHDO_NN values ('KD005', '01', 'B');
insert into TRINHDO_NN values ('KD005', '02', 'D');
insert into TRINHDO_NN values ('KD005', '03', 'B');
insert into TRINHDO_NN values ('KD005', '04', 'B');
INSERT INTO TRINHDO_NN values ('KT001', '01', 'B1');
INSERT INTO TRINHDO_NN values ('KT001', '04', 'E');
INSERT INTO TRINHDO_NN values ('KT002', '01', 'C');
INSERT INTO TRINHDO_NN values ('KT002', '02', 'B');
INSERT INTO TRINHDO_NN values ('KT003', '01', 'B1');
INSERT INTO TRINHDO_NN values ('KT003', '03', 'C');
INSERT INTO TRINHDO_NN values ('KT004', '01', 'D');
INSERT INTO TRINHDO_NN values ('KT005', '01', 'C');
INSERT INTO TRINHDO_NN values ('KT010', '03', 'A');



--kiem tra du lieu
select * from PHONG
select * from DANHMUC_NN
select * from NHANVIEN
select * from TRINHDO_NN         


--tao view

	--/Đưa ra thông tin của nhân viên có mã số KT001--\
	CREATE VIEW ThongTinNV_KT001_View as
	select *
	from NHANVIEN as nv
	where nv.MaNV = 'KT001'
	
	--/Đưa ra danh sách các nhân viên nữ--\
	create view DSNV_Nu_View as
	select *
	from NHANVIEN as nv
	where nv.GioiTinh = N'Nữ'
	
	--/Tìm những nhân viên có họ Nguyễn--\
	create view DSNV_HoNguyen_View as
	select *
	from NHANVIEN as nv
	where nv.Ho = N'Nguyễn'
	
	--/Đưa ra danh sách nhân viên có tên chứa từ 'Văn'--\
	create view DSNV_CoTuVan_View as
	select *
	from NHANVIEN as nv
	where nv.Ho = N'Văn'
		or nv.TenLot = N'Văn'
		or nv.Ten = N'Văn'
		
	--/Đưa ra những nhân viên có tuổi dưới 30 (Đưa ra cả thông tin tuổi trong kết quả)--\
	create view DSNV_TuoiDuoi30_View as
	select *, (YEAR(GETDATE()) - YEAR(nv.NgaySinh)) as 'Tuoi'
	from NHANVIEN as nv
	where YEAR(GETDATE()) - YEAR(nv.NgaySinh) < 30	
	
	--/Đưa ra danh sách các nhân viên có tuổi nằm trong khoảng 25 đến 30--\
	create view DSNV_TrongKhoang25Den30__View as
	select *, (YEAR(GETDATE()) - YEAR(nv.NgaySinh)) as 'Tuoi'
	from NHANVIEN as nv
	where YEAR(GETDATE()) - YEAR(nv.NgaySinh) >= 25
		and	YEAR(GETDATE()) - YEAR(nv.NgaySinh) <=30
	
	--/Đưa ra các mã nhân viên đã học các ngoại ngữ 01 ở trình dộ C trở lên--\
	create view DSNV_NN01TD_C_TroLen__View as
	select MaNV
	from TRINHDO_NN as td
	where td.MaNN = '01'
	and
	 (
		td.TrDo = 'B1' or
		td.TrDo = 'B2' or
		td.TrDo = 'C' or
		td.TrDo = 'D' or
		td.TrDo = 'E'
	 )
	
	--/Đưa ra danh sách các nhân viên vào biên chế trước năm 2000--\
	create view DSNV_BIENCHETRUOC2000_View as
	select *
	from NHANVIEN as nv
	where YEAR(nv.NgayBC) < 2000
	
	--/Đưa ra danh sách các nhân viên vào biên chế hơn 10 năm--\
	create view DSNV_BIENCHETRUOC10Nam_View as
	select *
	from NHANVIEN as nv
	where YEAR(GETDATE()) - YEAR(nv.NgayBC) > 10
	
	
--Xem view
select * from ThongTinNV_KT001_View
select * from DSNV_Nu_View
select * from DSNV_HoNguyen_View
select * from DSNV_CoTuVan_View
select * from DSNV_TuoiDuoi30_View
select * from DSNV_TrongKhoang25Den30__View
select * from DSNV_NN01TD_C_TroLen__View
select * from DSNV_BIENCHETRUOC10Nam_View


	
--Các thủ tục
	--1. Đưa ra danh sách các nhân viên năm nay đủ tuổi nghỉ hưu (Nam >=60 tuổi, Nu >=55 tuổi)--/
	CREATE PROCEDURE duTuoi
	as
	begin
		select *, (YEAR(GETDATE()) - YEAR(nv.NgaySinh)) as 'Tuoi'
		from NHANVIEN as nv
		where 
			(
				    nv.GioiTinh = N'Nam'
				and YEAR(GETDATE()) - YEAR(nv.NgaySinh) >= 60
			)
			or
			(
				    nv.GioiTinh = N'Nữ'
				and YEAR(GETDATE()) - YEAR(nv.NgaySinh) >= 55
			)
	end
	go
	
	--2. Đưa ra danh sách các nhân viên năm nay đủ tuổi nghỉ hưu (Nam >=60 tuổi, Nu >=55 tuổi)--/
	CREATE PROCEDURE soNguoiNghiHuu
	as
	begin
		select nv.GioiTinh, COUNT(*) as 'Số lượng'
		from NHANVIEN as nv
		where 
			(
				    nv.GioiTinh = N'Nam'
				and YEAR(GETDATE()) - YEAR(nv.NgaySinh) >= 60
			)
			or
			(
				    nv.GioiTinh = N'Nữ'
				and YEAR(GETDATE()) - YEAR(nv.NgaySinh) >= 55
			)
		group by nv.GioiTinh
	end
	go
	
	--3. Cho biết thông tin (Mã phòng, tên phòng, điện thoại liên hệ) về các phòng ban--/
	CREATE PROCEDURE thongTinPhongBan
	as
	begin
		select pb.MaPhong, pb.TenPhong, pb.Tel
		from PHONG as pb
	end
	go

	--4. đưa ra thông tin(họ tên, ngày sinh, ngày vào biên chế) về 2 nhân viên đầu tiên trong NV--/
	Create PROCEDURE thongTinNVdauTien
	as
	begin
		select top(2) *
		from NHANVIEN
	end
	go
	--5. cho biết mã nhân viên, họ tên nhân viên,ngày sinh,lương của các nhân viên có hệ số lương 
	--nằm trong khoảng 2.00 đến 3.00
	
	Create procedure thongtinNVcohesoluong
	as
	begin 
		select MaNV, Ho, TenLot, Ten, NgaySinh,HeSoLuong
		from NHANVIEN
		where NHANVIEN.HeSoLuong BETWEEN 2.00 and 3.00
	end
	go
	--6. Cho biết số người có hệ số lương nằm trong khoảng từ 3.50 đến 4.50
	
	CREATE PROCEDURE soNVcohesoluong3_4
		@soluongNV int output
	as
	begin
		select COUNT(*)
		from NHANVIEN
		where HeSoLuong between 3.50 and 4.50
		select @soluongNV = @@ROWCOUNT
	end
	go
	
	declare @kq int
	exec soNVcohesoluong3_4 @kq output
	print @kq
	
	--7. Đưa ra ds các nhân viên chưa có sđt
	CREATE PROCEDURE dsNVkcosdt
	as
	begin 
		select *
		from NHANVIEN
		where Tel = ''
	end
	go
	
	--8. đưa ra ds NV có sinh nhật hàng tháng(số tháng sinh nhật muốn tìm được truyền từ tham số đầu vào của thủ tục)
	CREATE PROCEDURE dsSNHangThang
		@thang int
	as
	begin
		select *
		from NHANVIEN
		where MONTH(NgaySinh) = @thang
	end
	go
	
	--9. Đếm số nhân viên sinh nhật hàng tháng (các giá trị này cũng được truyền cho tham số đầu ra của thủ tục)
	CREATE PROCEDURE soLuongSN
		@thang int,
		@soLuong int output
	as
	begin
		select COUNT(*)
		from NHANVIEN
		where MONTH(NgaySinh) = @thang
	end
	go
	
	--10. Hãy đưa ra danh sách nhân viên theo chiều tăng dần của hệ số lương
	create proc dsHSLTangDan
	as
	begin
		select *
		from NHANVIEN
		order by NHANVIEN.HeSoLuong ASC
	end
	go
	
	--11. Cho biết tổng số nhân viên và trung bình lương trong phòng Kinh doanh? (Kết quả truyền qua tham số của thủ tục)
	create proc slNV_TBLuong
	as
	begin
		select COUNT(*), AVG(NV_Luong.Luong)
		from (
			select NHANVIEN.MaNV,(NHANVIEN.HeSoLuong * 1490000) as 'Luong' 
			from NHANVIEN, PHONG
			where NHANVIEN.MaPhong = PHONG.MaPhong
			and PHONG.TenPhong = N'Kinh Doanh' 
			) as NV_Luong
	end
	go
	
	--12. cho biết tổng lương của mỗi phòng
	create proc tongLuongCacPhong
	as
	begin
		select NV_Luong.MaPhong, NV_Luong.TenPhong, SUM(NV_Luong.Luong)
		from (
			select NHANVIEN.MaNV, PHONG.MaPhong, PHONG.TenPhong,(NHANVIEN.HeSoLuong * 1490000) as 'Luong' 
			from NHANVIEN, PHONG
			where NHANVIEN.MaPhong = PHONG.MaPhong
			) as NV_Luong
		group by NV_Luong.MaPhong, NV_Luong.TenPhong
	end
	go
	
	--13. Cho biết các phòng có tổng lương lớn nhất
	create proc phongCoTongLuongLonNhat
	as
	begin
		select *
		from (
			select NV_Luong.MaPhong, NV_Luong.TenPhong, SUM(NV_Luong.Luong) as luong
			from (
				select NHANVIEN.MaNV, PHONG.MaPhong, PHONG.TenPhong,(NHANVIEN.HeSoLuong * 1490000) as 'Luong' 
				from NHANVIEN, PHONG
				where NHANVIEN.MaPhong = PHONG.MaPhong
				) as NV_Luong
			group by NV_Luong.MaPhong, NV_Luong.TenPhong
			) as NV_Luong
		where NV_Luong.luong = (
		
				select MAX(NV_TongLuong.luong)
				from (
					select NV_Luong.MaPhong, NV_Luong.TenPhong, SUM(NV_Luong.Luong) as luong
					from (
						select NHANVIEN.MaNV, PHONG.MaPhong, PHONG.TenPhong,(NHANVIEN.HeSoLuong * 1490000) as 'Luong' 
						from NHANVIEN, PHONG
						where NHANVIEN.MaPhong = PHONG.MaPhong
						) as NV_Luong
					group by NV_Luong.MaPhong, NV_Luong.TenPhong
				) as NV_TongLuong
			)
	end
	go
	
	--14. Cho biết danh sách mã nhân viên, họ tên, mã phòng và tên phòng họ làm việc.
	create proc thongTinNV
	as
	begin
		select NHANVIEN.MaNV, (NHANVIEN.Ho+ ' ' + NHANVIEN.TenLot + ' ' + NHANVIEN.Ten) as 'Họ Và Tên', PHONG.MaPhong, PHONG.TenPhong
		from NHANVIEN, PHONG
		where NHANVIEN.MaPhong = PHONG.MaPhong
	end
	go
	
--Chạy thủ tục
exec duTuoi
exec soNguoiNghiHuu
exec thongTinPhongBan
exec thongTinNVdautien
exec thongtinNVcohesoluong
exec dsNVkcosdt

declare @thang int
set @thang=5
exec dsSNHangThang @thang

declare @kq int
exec soLuongSN @thang, @kq output
print @kq

exec dsHSLTangDan

exec slNV_TBLuong

exec tongLuongCacPhong

exec phongCoTongLuongLonNhat

exec thongTinNV


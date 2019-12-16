create database QUANLY_SINHVIEN
go

use QUANLY_SINHVIEN
go

SET DATEFORMAT DMY
go

Create Table KHOA
(
	MaKhoa Char(4) Not null,
	TenKhoa Nvarchar(30) Not null,
	Diachi Nvarchar(50),
	DianThoai Varchar(10)
)
go

Create Table LOP
(
	MaLop Char(10) Not null,
	TenLop Nvarchar(30) Not null,
	MaKhoa Char(4) Not null
)
go

Create Table SINH_VIEN
(
	MaSV Char(8) Not null,
	HoTenSV Nvarchar(30) Not null,
	Ngaysinh Datetime,
	MaLop Char(10) Not null
)
go

Create Table MON_HOC
(
	MaMon Char(5) Not null,
	TenMon Nvarchar(30) Not null,
	SoTinChi Smallint Not null
)
go

Create Table GIANG_VIEN
(
	MaGV Char(9) Not null,
	HoTenGV Nvarchar(40) Not null,
	MaKhoa Char(4)Not null
)
go

Create Table GIANG_DAY
(
	MaMon Char(5) Not null,
	MaGV Char(9) Not null,
	NamHoc Char(9) Not null,
	HocKy Smallint Not null,
	MaLop Char(10) Not null
)
go

Create Table DANG_KY_HOC
(
	MaSV Char(8) Not null,
	MaMon Char(5) Not null,
	NamHoc Char(9) Not null,
	HocKy Smallint Not null,
	MaGV Char(9) Not null,
	Diem SmallInt
)
go

------------------------------------------------------
ALTER TABLE KHOA ADD CONSTRAINT PK_MaKhoa PRIMARY KEY (MaKhoa)
ALTER TABLE LOP ADD CONSTRAINT PK_MaLop PRIMARY KEY (MaLop)
ALTER TABLE SINH_VIEN ADD CONSTRAINT PK_MaSV PRIMARY KEY (MaSV)
ALTER TABLE MON_HOC ADD CONSTRAINT PK_MaMon PRIMARY KEY (MaMon)
ALTER TABLE GIANG_VIEN ADD CONSTRAINT PK_MaGV PRIMARY KEY (MaGV)
ALTER TABLE GIANG_DAY ADD CONSTRAINT PK_GD PRIMARY KEY (MaMon, MaGV, NamHoc, HocKy, MaLop)
ALTER TABLE DANG_KY_HOC ADD CONSTRAINT PK_DKH PRIMARY KEY (MaSV, MaMon, NamHoc, HocKy, MaGV)


------------------------------------------------------
ALTER TABLE LOP ADD CONSTRAINT FK_K_L
FOREIGN KEY (MaKhoa) REFERENCES KHOA(MaKhoa)
ALTER TABLE SINH_VIEN ADD CONSTRAINT FK_L_SV
FOREIGN KEY (MaLop) REFERENCES LOP(MaLop)
ALTER TABLE GIANG_VIEN ADD CONSTRAINT FK_K_GV
FOREIGN KEY (MaKhoa) REFERENCES KHOA(MaKhoa)
ALTER TABLE GIANG_DAY ADD CONSTRAINT FK_MH_GD
FOREIGN KEY (MaMon) REFERENCES MON_HOC(MaMon)
ALTER TABLE GIANG_DAY ADD CONSTRAINT FK_GV_GD
FOREIGN KEY (MaGV) REFERENCES GIANG_VIEN(MaGV)
ALTER TABLE GIANG_DAY ADD CONSTRAINT FK_L_GD
FOREIGN KEY (MaLop) REFERENCES LOP(MaLop)
ALTER TABLE DANG_KY_HOC ADD CONSTRAINT FK_SV_DKH
FOREIGN KEY (MaSV) REFERENCES SINH_VIEN(MaSV)
ALTER TABLE DANG_KY_HOC ADD CONSTRAINT FK_MH_DKH
FOREIGN KEY (MaMon) REFERENCES MON_HOC(MaMon)
ALTER TABLE DANG_KY_HOC ADD CONSTRAINT FK_GV_DKH
FOREIGN KEY (MaGV) REFERENCES GIANG_VIEN(MaGV)


------------------------------------------------------
INSERT INTO KHOA VALUES ('TOAN',N'Toán-Tin',N'Nhà C1','0743447325')
INSERT INTO KHOA VALUES ('CNTT',N'Công nghệ Thông tin',N'Nhà C2','0743447326')
INSERT INTO KHOA VALUES ('D_LY',N'Địa lý',N'Nhà A1','0743447327')
INSERT INTO KHOA VALUES ('HHOC',N'Hóa học',N'Nhà A2','0743447328')
Select *
from KHOA

INSERT INTO LOP VALUES ('DA11TO12A1',N'ĐH Toán A1 2012','TOAN')
INSERT INTO LOP VALUES ('DA12TT12A1',N'ĐH CNTT A1 2012','CNTT')
INSERT INTO LOP VALUES ('DA12DL12A1',N'ĐH Địa Lý A1 2012','D_LY')
INSERT INTO LOP VALUES ('DA12TT12A2',N'ĐH CNTT A2 2012','CNTT')
INSERT INTO LOP VALUES ('DA12DL12A2',N'ĐH Địa Lý A2 2012','D_LY')
INSERT INTO LOP VALUES ('DA12HH12A1',N'ĐH Hóa Học A1 2012','HHOC')
Select *
from LOP

INSERT INTO SINH_VIEN VALUES ('K6100001',N'Phạm Văn Bình','24-02-1990','DA11TO12A1')
INSERT INTO SINH_VIEN VALUES ('K6100002',N'Nguyễn Thị Hoài Thu','12-04-1991','DA12TT12A1')
INSERT INTO SINH_VIEN VALUES ('K6100003',N'Trần Ngọc Thanh','15-04-1990','DA12DL12A1')
INSERT INTO SINH_VIEN VALUES ('K6100004',N'Nguyễn Tấn Hùng','03-02-1992','DA12TT12A2')
INSERT INTO SINH_VIEN VALUES ('K6100005',N'Trương Thành Sang','04-12-1990','DA12DL12A2')
INSERT INTO SINH_VIEN VALUES ('K6100006',N'Nguyễn Anh Dũng','03-03-1982','DA12HH12A1')
INSERT INTO SINH_VIEN VALUES ('K6100007',N'Phạm Hồng Ánh','24-02-1990','DA11TO12A1')
INSERT INTO SINH_VIEN VALUES ('K6100008',N'Lê Thị Liễu','12-04-1991','DA12TT12A1')
INSERT INTO SINH_VIEN VALUES ('K6100009',N'Phạm Ngọc Sương','17-04-1991','DA12DL12A1')
INSERT INTO SINH_VIEN VALUES ('K6100010',N'Nguyễn Tấn','03-12-1992','DA12TT12A2')
INSERT INTO SINH_VIEN VALUES ('K6100011',N'Thạch Thanh Sang','04-02-1990','DA12DL12A2')
INSERT INTO SINH_VIEN VALUES ('K6100012',N'Nguyễn Hồng Anh Ngọc','03-12-1992','DA12HH12A1')
INSERT INTO SINH_VIEN VALUES ('K6100013',N'Nguyễn Hồng Ngọc','13-12-1992','DA12TT12A2')
INSERT INTO SINH_VIEN VALUES ('K6100014',N'Kim Thanh Sang','04-02-1990','DA12DL12A2')
INSERT INTO SINH_VIEN VALUES ('K6100015',N'Hồng Anh Ngọc','13-12-1992','DA12HH12A1')
Select *
from SINH_VIEN

INSERT INTO MON_HOC VALUES ('GTA1',N'Giải tích 1','2')
INSERT INTO MON_HOC VALUES ('DSTT',N'Đại số tuyến tính','3')
INSERT INTO MON_HOC VALUES ('HHAF',N'Hình học Afin','2')
INSERT INTO MON_HOC VALUES ('XSTK',N'Xác suất thống kê','2')
INSERT INTO MON_HOC VALUES ('THDC',N'Tin học đại cương','3')
INSERT INTO MON_HOC VALUES ('KTLT',N'Kỹ thuật lập trình','2')
Select *
from MON_HOC

INSERT INTO GIANG_VIEN VALUES ('15.111.01',N'Phạm Bình Minh','TOAN')
INSERT INTO GIANG_VIEN VALUES ('15.111.02',N'Nguyễn Hoài Thu','CNTT')
INSERT INTO GIANG_VIEN VALUES ('15.111.03',N'Trần Ngọc Ân','D_LY')
INSERT INTO GIANG_VIEN VALUES ('15.111.04',N'Nguyễn Hùng Anh','HHOC')
INSERT INTO GIANG_VIEN VALUES ('15.111.05',N'Phạm Ngọc Diệp','TOAN')
INSERT INTO GIANG_VIEN VALUES ('15.111.06',N'Lê Anh Dũng','CNTT')
INSERT INTO GIANG_VIEN VALUES ('15.111.07',N'Phạm Hồng Ánh','TOAN')
INSERT INTO GIANG_VIEN VALUES ('15.111.08',N'Lê Thị Liễu Phượng','HHOC')
INSERT INTO GIANG_VIEN VALUES ('15.111.09',N'Phạm Ngọc Thu Sương','CNTT')
INSERT INTO GIANG_VIEN VALUES ('15.111.10',N'Võ Anh Tài','CNTT')
Select *
from GIANG_VIEN

INSERT INTO GIANG_DAY VALUES ('GTA1','15.111.01','2012-2013','1','DA11TO12A1')
INSERT INTO GIANG_DAY VALUES ('DSTT','15.111.05','2012-2013','2','DA11TO12A1')
INSERT INTO GIANG_DAY VALUES ('HHAF','15.111.07','2012-2013','2','DA11TO12A1')
INSERT INTO GIANG_DAY VALUES ('XSTK','15.111.01','2011-2012','2','DA12HH12A1')
INSERT INTO GIANG_DAY VALUES ('THDC','15.111.10','2012-2013','1','DA12DL12A1')
INSERT INTO GIANG_DAY VALUES ('THDC','15.111.09','2011-2012','1','DA12HH12A1')
INSERT INTO GIANG_DAY VALUES ('THDC','15.111.02','2012-2013','1','DA12DL12A2')
INSERT INTO GIANG_DAY VALUES ('KTLT','15.111.02','2012-2013','2','DA12TT12A1')
Select *
from GIANG_DAY

INSERT INTO DANG_KY_HOC VALUES ('K6100001','GTA1','2012-2013','1','15.111.01','6')
INSERT INTO DANG_KY_HOC VALUES ('K6100001','DSTT','2012-2013','2','15.111.05','7')
INSERT INTO DANG_KY_HOC VALUES ('K6100001','HHAF','2012-2013','2','15.111.07','5')
INSERT INTO DANG_KY_HOC VALUES ('K6100002','DSTT','2012-2013','2','15.111.05','4')
INSERT INTO DANG_KY_HOC VALUES ('K6100002','XSTK','2011-2012','2','15.111.01','3')
INSERT INTO DANG_KY_HOC VALUES ('K6100002','GTA1','2012-2013','1','15.111.01','2')
INSERT INTO DANG_KY_HOC VALUES ('K6100003','HHAF','2012-2013','2','15.111.07','5')
INSERT INTO DANG_KY_HOC VALUES ('K6100003','GTA1','2012-2013','1','15.111.01','9')
INSERT INTO DANG_KY_HOC VALUES ('K6100003','XSTK','2011-2012','2','15.111.01','10')
INSERT INTO DANG_KY_HOC VALUES ('K6100004','XSTK','2011-2012','2','15.111.01','4')
INSERT INTO DANG_KY_HOC VALUES ('K6100004','DSTT','2012-2013','2','15.111.05','7')
INSERT INTO DANG_KY_HOC VALUES ('K6100004','KTLT','2012-2013','2','15.111.02','5')
INSERT INTO DANG_KY_HOC VALUES ('K6100012','THDC','2012-2013','1','15.111.10','6')
INSERT INTO DANG_KY_HOC VALUES ('K6100013','THDC','2011-2012','1','15.111.09','9')
INSERT INTO DANG_KY_HOC VALUES ('K6100013','KTLT','2012-2013','2','15.111.02','8')
INSERT INTO DANG_KY_HOC VALUES ('K6100014','THDC','2012-2013','1','15.111.02','10')
INSERT INTO DANG_KY_HOC VALUES ('K6100015','THDC','2012-2013','1','15.111.02','3')
INSERT INTO DANG_KY_HOC VALUES ('K6100015','GTA1','2012-2013','1','15.111.01','6')
INSERT INTO DANG_KY_HOC VALUES ('K6100015','DSTT','2011-2012','1','15.111.05','7')
INSERT INTO DANG_KY_HOC VALUES ('K6100015','XSTK','2012-2013','1','15.111.01','8')
Select *
from DANG_KY_HOC


--tao view

	--/Hiển thị danh sách tất cả các sinh viên--\
	CREATE VIEW dsSinhVien_View 
	as
	select *
	from SINH_VIEN
	go
	
	--2. Hiển thị danh sách tất cả các sinh viên(gồm: họ tên sinh viên, tên lớp, tên khoa)
	create view dsSinhVien2_View
	as
	select SINH_VIEN.HoTenSV, LOP.TenLop, KHOA.TenKhoa
	from SINH_VIEN, LOP, KHOA
	where SINH_VIEN.MaLop = LOP.MaLop
	and LOP.MaKhoa = KHOA.MaKhoa
	go
	
	--3. Hiển thị danh sách các giảng viên(gồm họ tên giảng viên, tên khoa)
	create view dsGiangVien_View
	as
	select gv.HoTenGV, KHOA.TenKhoa
	from GIANG_VIEN as gv, KHOA
	where gv.MaKhoa = KHOA.MaKhoa
	go
	
	--4. Hiển thị danh sách các giảng viên giảng dạy các môn học (Tên giảng viên, tên khoa, tên môn học)
	create view dsGiangDay
	as
	select gv.MaGV, HoTenGV, KHOA.TenKhoa, mh.TenMon
	from GIANG_VIEN as gv, GIANG_DAY as gd, KHOA, MON_HOC as mh
	where gv.MaKhoa = KHOA.MaKhoa
	and gd.MaGV = gv.MaGV
	and gd.MaMon = mh.MaMon
	go
	
	--5. Hiển thị danh sách các giảng viên không dạy môn học nào trong năm học 2011-2012
	create view dsGVKhongDay
	as
	select *
	from GIANG_VIEN as gv
	where gv.MaGV not in
		(
			select MaGV
			from dsGiangDay
		)
	go
	
--xem view
select * from dsSinhVien_View
select * from dsSinhVien2_View
select * from dsGiangVien_View
select * from dsGiangDay
select * from dsGVKhongDay



--Truy vấn
	--1. Hiển thị mã, tên các môn học được sinh viên Nguyễn Thị Hoài Thu đăng ký học
	create proc monHocNguyenThiThuHoai
	as
	begin
		select MON_HOC.MaMon, MON_HOC.TenMon
		from MON_HOC, SINH_VIEN as sv, DANG_KY_HOC as dkh
		where sv.HoTenSV = N'Nguyễn Thị Hoài Thu'
		and MON_HOC.MaMon = dkh.MaMon
		and sv.MaSV = dkh.MaSV
	end 
	go
	
	--2. Đếm số môn học mà sinh viên Trần Ngọc Thanh đã đăng ký học (kết quả truyền cho tham số đầu ra của thủ tục)
	create proc soMonTranNgocThanh
		@kq int output
	as
	begin
		set @kq = (
					select COUNT(*)
					from DANG_KY_HOC as dkh, SINH_VIEN as sv
					where dkh.MaSV = sv.MaSV
					and sv.HoTenSV = N'Trần Ngọc Thanh'
					) 
	end
	go
	
	--3. Hiển thị danh sách các sinh viên đăng ký học môn Giải tích 1 trong học kỳ 1 
	--(trong danh sách cần chứa các thông tin: Mã sinh viên, họ tên, tên khoa)
	create proc dsSVDangKyMonGT1OfHK1
	as
	begin
		select sv.MaSV, sv.HoTenSV, KHOA.TenKhoa
		from SINH_VIEN as sv, DANG_KY_HOC as dkh, MON_HOC as mh, KHOA, LOP
		where sv.MaSV = dkh.MaSV
		and dkh.MaMon = mh.MaMon
		and mh.TenMon = N'Giải Tích 1'
		and dkh.HocKy = 1
		and sv.MaLop = LOP.MaLop
		and LOP.MaKhoa = KHOA.MaKhoa
	end
	go
	
	--4. Hiển thị danh sách sinh viên sắp xếp theo tên khoa, mỗi khoa lại sắp xếp theo họ tên.
	--Danh sách chứa các thông tin sau: mã sinh viên, họ tên sinh viên, ngày sinh, tên khoa.
	create proc dsSVSapXepTheoKhoa
	as
	begin
		select *
		from KHOA, SINH_VIEN as sv, LOP
		where KHOA.MaKhoa = LOP.MaKhoa
		and	sv.MaLop = LOP.MaLop
		order by KHOA.TenKhoa ASC , sv.HoTenSV ASC
	end
	go
	
--Chạy thủ tục
exec monHocNguyenThiThuHoai

declare @kq int
exec soMonTranNgocThanh @kq output
print @kq

exec dsSVDangKyMonGT1OfHK1


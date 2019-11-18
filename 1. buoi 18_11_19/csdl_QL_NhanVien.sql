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
insert into NHANVIEN values('KT006', N'Trần', N'Hoài', N'Nam', N'Nam', '1778-02-17', 2.80, 'KDA', '', '1997-08-16')
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

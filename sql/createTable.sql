CREATE DATABASE QuanLyDiemThi;
USE QuanLyDiemThi;

CREATE TABLE HocSinh (
                         MaHS VARCHAR(20) PRIMARY KEY,
                         TenHS VARCHAR(50),
                         NgaySinh DATETIME,
                         Lop VARCHAR(20),
                         GT VARCHAR(20)
);

CREATE TABLE GiaoVien (
                          MaGV VARCHAR(20),
                          TenGV VARCHAR(50),
                          SDT VARCHAR(10)
);

ALTER TABLE GiaoVien
    ADD CONSTRAINT PK_GiaoVien PRIMARY KEY (MaGV);

CREATE TABLE MonHoc (
                        MaMH VARCHAR(20),
                        TenMH VARCHAR(50),
                        MaGV VARCHAR(20),
                        CONSTRAINT PK_MonHoc PRIMARY KEY (MaMH),
                        FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);

CREATE TABLE BangDiem (
                          MaHS VARCHAR(20),
                          MaMH VARCHAR(50),
                          DiemThi INT,
                          NgayKT DATETIME
);


ALTER TABLE BangDiem
    ADD PRIMARY KEY (MaHS, MaMH);
ALTER TABLE BangDiem
    ADD FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS);

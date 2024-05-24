CREATE TABLE "THELOAI" (
	"MaTheLoai"	INTEGER,
	"TenTheLoai"	TEXT NOT NULL,
	PRIMARY KEY("MaTheLoai")
);

CREATE TABLE "THAMSO" (
	"TenThamSo"	TEXT,
	"GiaTri"	INTEGER NOT NULL,
	PRIMARY KEY("TenThamSo")
);

CREATE TABLE "TACGIA" (
	"MaTacGia"	INTEGER,
	"TenTacGia"	TEXT NOT NULL,
	PRIMARY KEY("MaTacGia")
);

CREATE TABLE "DAUSACH" (
	"MaDauSach"	INTEGER,
	"TenDauSach"	TEXT NOT NULL,
	"MaTheLoai"	INTEGER NOT NULL,
	PRIMARY KEY("MaDauSach" AUTOINCREMENT),
	FOREIGN KEY("MaTheLoai") REFERENCES "THELOAI"("MaTheLoai")
);

CREATE TABLE "CT_TACGIA" (
	"MaTacGia"	INTEGER,
	"MaDauSach"	INTEGER,
	PRIMARY KEY("MaTacGia","MaDauSach"),
	FOREIGN KEY("MaDauSach") REFERENCES "DAUSACH"("MaDauSach"),
	FOREIGN KEY("MaTacGia") REFERENCES "TACGIA"("MaTacGia")
);

CREATE TABLE "SACH" (
	"MaSach"	INTEGER,
	"MaDauSach"	INTEGER NOT NULL,
	"NhaXuatBan"	TEXT NOT NULL,
	"NamXuatBan"	INTEGER NOT NULL,
	"SoLuongTon"	INTEGER NOT NULL,
	"DonGiaNhap"	REAL NOT NULL,
	"DonGiaBan"	REAL NOT NULL,
	FOREIGN KEY("MaDauSach") REFERENCES "DAUSACH"("MaDauSach"),
	PRIMARY KEY("MaSach" AUTOINCREMENT)
);

CREATE TABLE "KHACHHANG" (
	"MaKhachHang"	INTEGER,
	"TenKhachHang"	TEXT NOT NULL,
	"DiaChi"	TEXT NOT NULL,
	"SoDienThoai"	TEXT NOT NULL,
	"Email"	TEXT NOT NULL,
	"SoTienNo"	REAL NOT NULL DEFAULT 0,
	PRIMARY KEY("MaKhachHang")
);

CREATE TABLE "HOADON" (
	"MaHoaDon"	INTEGER,
	"MaKhachHang"	INTEGER NOT NULL,
	"NgayLap"	NUMERIC NOT NULL,
	"TongTien"	REAL NOT NULL,
	"ThanhToan"	REAL NOT NULL,
	"ConLai"	REAL NOT NULL,
	PRIMARY KEY("MaHoaDon" AUTOINCREMENT),
	FOREIGN KEY("MaKhachHang") REFERENCES "KHACHHANG"("MaKhachHang")
);

CREATE TABLE "PHIEUNHAPSACH" (
	"MaPhieuNhapSach"	INTEGER,
	"NgayLap"	NUMERIC,
	"TongTien"	REAL,
	PRIMARY KEY("MaPhieuNhapSach" AUTOINCREMENT)
);

CREATE TABLE "PHIEUTHUTIEN" (
	"MaPhieuThuTien"	INTEGER,
	"MaKhachHang"	INTEGER NOT NULL,
	"NgayThuTien"	NUMERIC NOT NULL,
	"SoTienThu"	REAL NOT NULL,
	PRIMARY KEY("MaPhieuThuTien")
);

CREATE TABLE "CT_PHIEUNHAPSACH" (
	"MaPhieuNhapSach"	INTEGER,
	"MaSach"	INTEGER,
	"SoLuong"	INTEGER NOT NULL,
	"DonGiaNhap"	REAL,
	"ThanhTien"	REAL,
	FOREIGN KEY("MaPhieuNhapSach") REFERENCES "PHIEUNHAPSACH"("MaPhieuNhapSach"),
	FOREIGN KEY("MaSach") REFERENCES "SACH"("MaSach"),
	PRIMARY KEY("MaPhieuNhapSach","MaSach")
);

CREATE TABLE "CT_HOADON" (
	"MaHoaDon"	INTEGER,
	"MaSach"	INTEGER,
	"SoLuong"	INTEGER NOT NULL,
	"DonGiaBan"	REAL,
	"ThanhTien"	REAL,
	FOREIGN KEY("MaHoaDon") REFERENCES "HOADON"("MaHoaDon"),
	FOREIGN KEY("MaSach") REFERENCES "SACH"("MaSach"),
	PRIMARY KEY("MaHoaDon","MaSach")
);

CREATE TABLE "BAOCAOTON" (
    "Thang" INTEGER,
    "Nam" INTEGER,
    "MaSach" INTEGER,
    "TonDau" INTEGER,
    "PhatSinh" INTEGER,
    "TonCuoi" INTEGER,
    FOREIGN KEY("MaSach") REFERENCES "SACH"("MaSach"),
    PRIMARY KEY("Thang","Nam","MaSach")
);

CREATE TABLE "BAOCAOCONGNO" (
	"Thang"	INTEGER,
	"Nam"	NUMERIC,
	"MaKhachHang"	INTEGER,
	"NoDau"	REAL NOT NULL,
	"PhatSinh"	REAL NOT NULL,
	"NoCuoi"	REAL NOT NULL,
	FOREIGN KEY("MaKhachHang") REFERENCES "KHACHHANG"("MaKhachHang"),
	PRIMARY KEY("Thang","Nam","MaKhachHang")
);

INSERT INTO "THAMSO" ("TenThamSo", "GiaTri")
VALUES
    ('SoLuongNhapToiThieu', 150),
    ('SoLuongTonToiDa', 300),
    ('TonToiThieuSauBan', 20),
    ('TiLeTinhDonGiaBan', 1.05),
    ('SoTienNoToiDa', 1000000),
    ('ApDungQDKiemTraSoTienThu', 1);

INSERT INTO "TACGIA" ("TenTacGia")
VALUES
    ('Nguyễn Du'),
    ('Nam Cao'),
    ('Nguyễn Nhật Ánh'),
    ('Bảo Ninh'),
    ('Nguyễn Huy Thiệp'),
    ('Xuân Diệu'),
    ('Xuân Quỳnh'),
    ('Nguyễn Minh Châu'),
    ('Tô Hoài'),
    ('Nguyễn Quang Sáng'),
    ('Thạch Lam'),
    ('Tố Hữu'),
    ('Nguyễn Tuân'),
    ('Phan Bội Châu'),
    ('Vũ Trọng Phụng'),
    ('Lê Minh Khuê'),
    ('Nguyễn Ngọc Tư');


INSERT INTO "THELOAI" ("TenTheLoai")
VALUES
    ('Thơ lục bát'),
    ('Truyện thơ'),
    ('Truyện ngắn'),
    ('Tiểu thuyết hiện thực'),
    ('Văn học thiếu nhi'),
    ('Tiểu thuyết'),
    ('Văn học chiến tranh'),
    ('Thơ'),
    ('Thơ ca cách mạng'),
    ('Tuỳ bút'),
    ('Văn xuôi'),
    ('Tiểu thuyết hiện thực phê phán');


INSERT INTO "DAUSACH" ("TenDauSach", "MaTheLoai")
VALUES
    ('Truyện Kiều', 1),
    ('Chí Phèo', 4),
    ('Cho Tôi Xin Một Vé Đi Tuổi Thơ', 5),
    ('Nỗi Buồn Chiến Tranh', 7),
    ('Tướng Về Hưu', 6),
    ('Thơ Xuân Diệu', 8),
    ('Thuyền và Biển', 8),
    ('Dấu Chân Người Lính', 7),
    ('Dế Mèn Phiêu Lưu Ký', 5),
    ('Chiếc Lược Ngà', 3),
    ('Hai Đứa Trẻ', 3),
    ('Tập thơ Tố Hữu', 9),
    ('Vang Bóng Một Thời', 10),
    ('Ngục Trung Thư', 9),
    ('Số Đỏ', 12),
    ('Những Ngôi Sao Xa Xôi', 3),
    ('Cánh Đồng Bất Tận', 3);


INSERT INTO "SACH" ("MaDauSach", "NhaXuatBan", "NamXuatBan", "SoLuongTon", "DonGiaNhap", "DonGiaBan")
VALUES
    (1, 'NXB Kim Đồng', 2010, 50, 100000.0, 105000.0),
    (1, 'NXB Văn Học', 2015, 30, 110000.0, 115500.0),
    (1, 'NXB Giáo Dục', 2020, 20, 120000.0, 126000.0),
    (2, 'NXB Kim Đồng', 2011, 40, 90000.0, 94500.0),
    (2, 'NXB Văn Học', 2016, 35, 95000.0, 99750.0),
    (2, 'NXB Giáo Dục', 2019, 25, 100000.0, 105000.0),
    (3, 'NXB Trẻ', 2012, 45, 80000.0, 84000.0),
    (3, 'NXB Kim Đồng', 2017, 30, 85000.0, 89250.0),
    (3, 'NXB Văn Học', 2021, 20, 90000.0, 94500.0),
    (4, 'NXB Trẻ', 2010, 50, 100000.0, 105000.0),
    (4, 'NXB Văn Học', 2015, 35, 105000.0, 110250.0),
    (4, 'NXB Giáo Dục', 2020, 20, 110000.0, 115500.0),
    (5, 'NXB Văn Học', 2013, 40, 95000.0, 99750.0),
    (5, 'NXB Trẻ', 2018, 25, 100000.0, 105000.0),
    (6, 'NXB Giáo Dục', 2012, 45, 85000.0, 89250.0),
    (6, 'NXB Văn Học', 2017, 30, 90000.0, 94500.0),
    (7, 'NXB Văn Học', 2014, 50, 95000.0, 99750.0),
    (7, 'NXB Kim Đồng', 2019, 20, 100000.0, 105000.0),
    (8, 'NXB Trẻ', 2011, 45, 90000.0, 94500.0),
    (8, 'NXB Văn Học', 2016, 30, 95000.0, 99750.0),
    (9, 'NXB Kim Đồng', 2013, 40, 85000.0, 89250.0),
    (9, 'NXB Giáo Dục', 2018, 25, 90000.0, 94500.0),
    (10, 'NXB Văn Học', 2015, 50, 80000.0, 84000.0),
    (10, 'NXB Trẻ', 2020, 20, 85000.0, 89250.0),
    (11, 'NXB Kim Đồng', 2012, 45, 90000.0, 94500.0),
    (11, 'NXB Văn Học', 2017, 30, 95000.0, 99750.0),
    (12, 'NXB Văn Học', 2011, 40, 85000.0, 89250.0),
    (12, 'NXB Giáo Dục', 2016, 25, 90000.0, 94500.0),
    (13, 'NXB Văn Học', 2013, 50, 95000.0, 99750.0),
    (13, 'NXB Trẻ', 2018, 20, 100000.0, 105000.0),
    (14, 'NXB Kim Đồng', 2012, 45, 85000.0, 89250.0),
    (14, 'NXB Văn Học', 2017, 30, 90000.0, 94500.0),
    (15, 'NXB Văn Học', 2015, 40, 95000.0, 99750.0),
    (15, 'NXB Trẻ', 2020, 25, 100000.0, 105000.0),
    (16, 'NXB Kim Đồng', 2011, 45, 90000.0, 94500.0),
    (16, 'NXB Giáo Dục', 2016, 30, 95000.0, 99750.0),
    (17, 'NXB Văn Học', 2013, 50, 80000.0, 84000.0),
    (17, 'NXB Trẻ', 2018, 20, 85000.0, 89250.0);

INSERT INTO "CT_TACGIA" ("MaTacGia", "MaDauSach")
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17);

INSERT INTO "KHACHHANG" ("TenKhachHang", "DiaChi", "SoDienThoai", "Email", "SoTienNo")
VALUES
    ('Lê Xuân Quỳnh', 'Quận 3, TP. HCM', '0789666760', '21520430@gm.uit.edu.vn', 811000.0),
    ('Trương Gia Mẫn', 'Quận 9, TP. HCM', '0707763507', '21521115@gm.uit.edu', 500000.0),
    ('Võ Tấn Hoàng', 'TP. Thủ Đức, TP. HCM', '0123456852', '22520483@gm.uit.edu.vn', 230000.0),
    ('Lê Anh Khôi', 'TP. Thủ Đức, TP. HCM', '0521365897', '22520697@gm.uit.edu.vn', 45000.0),
    ('Nguyễn Văn A', '123 Đường Lê Lợi, Quận 1, TP.HCM', '0123456789', 'nguyenvana@example.com', 5000000.0),
    ('Trần Thị B', '456 Đường Trần Hưng Đạo, Quận 5, TP.HCM', '0987654321', 'tranthib@example.com', 1000000.0),
    ('Lê Văn C', '789 Đường Nguyễn Trãi, Quận 3, TP.HCM', '0123987654', 'levanc@example.com', 750000.0),
    ('Phạm Thị D', '321 Đường Hai Bà Trưng, Quận 10, TP.HCM', '0912345678', 'phamthid@example.com', 2500000.0),
    ('Hoàng Thị E', '654 Đường Cách Mạng Tháng Tám, Quận 10, TP.HCM', '0901234567', 'hoangthie@example.com', 3000000.0),
    ('Võ Văn F', '789 Đường Lý Thường Kiệt, Quận Tân Bình, TP.HCM', '0934567890', 'vovanf@example.com', 1500000.0),
    ('Đặng Thị G', '321 Đường Pasteur, Quận 3, TP.HCM', '0945678901', 'dangthig@example.com', 2000000.0),
    ('Phan Văn H', '456 Đường Nguyễn Văn Cừ, Quận 1, TP.HCM', '0956789012', 'phanvanh@example.com', 1800000.0),
    ('Đỗ Thị I', '123 Đường Nguyễn Thị Minh Khai, Quận 3, TP.HCM', '0967890123', 'dothii@example.com', 2200000.0),
    ('Ngô Văn J', '654 Đường Bùi Thị Xuân, Quận 1, TP.HCM', '0978901234', 'ngovanj@example.com', 1300000.0),
    ('Lý Thị K', '789 Đường Điện Biên Phủ, Quận 10, TP.HCM', '0989012345', 'lythik@example.com', 2700000.0),
    ('Mai Văn L', '321 Đường Tôn Đức Thắng, Quận 1, TP.HCM', '0990123456', 'maivanl@example.com', 3200000.0),
    ('Đinh Thị M', '123 Đường Xô Viết Nghệ Tĩnh, Quận Bình Thạnh, TP.HCM', '0912345600', 'dinhthim@example.com', 2900000.0),
    ('Vũ Văn N', '456 Đường Hoàng Sa, Quận 3, TP.HCM', '0923456701', 'vuvann@example.com', 3400000.0),
    ('Trịnh Thị O', '789 Đường Trường Sa, Quận Bình Thạnh, TP.HCM', '0934567802', 'trinhthio@example.com', 2100000.0),
    ('Lưu Văn P', '321 Đường Nguyễn Thái Sơn, Quận Gò Vấp, TP.HCM', '0945678903', 'luuvanp@example.com', 1600000.0);

INSERT INTO "BAOCAOCONGNO" ("Thang", "Nam", "MaKhachHang", "NoDau", "PhatSinh", "NoCuoi")
VALUES
    (2024, 1, 1, 60000.0, 10000.0, 50000.0),
    (2024, 1, 2, 70000.0, 12000.0, 58000.0),
    (2024, 1, 3, 55000.0, 8000.0, 47000.0),
    (2024, 1, 4, 65000.0, 15000.0, 50000.0),
    (2024, 1, 5, 50000.0, 7000.0, 43000.0),
    (2024, 1, 6, 62000.0, 18000.0, 44000.0),
    (2024, 1, 7, 57000.0, 10000.0, 47000.0),
    (2024, 1, 8, 58000.0, 9000.0, 49000.0),
    (2024, 1, 9, 63000.0, 13000.0, 50000.0),
    (2024, 1, 10, 54000.0, 7000.0, 47000.0),
    (2024, 1, 11, 59000.0, 11000.0, 48000.0),
    (2024, 1, 12, 51000.0, 12000.0, 39000.0),
    (2024, 1, 13, 64000.0, 14000.0, 50000.0),
    (2024, 1, 14, 56000.0, 8000.0, 48000.0),
    (2024, 1, 15, 68000.0, 15000.0, 53000.0),
    (2024, 1, 16, 50000.0, 10000.0, 40000.0),
    (2024, 1, 17, 67000.0, 16000.0, 51000.0),
    (2024, 1, 18, 59000.0, 8000.0, 51000.0),
    (2024, 1, 19, 54000.0, 11000.0, 43000.0),
    (2024, 1, 20, 60000.0, 13000.0, 47000.0),
    (2024, 1, 21, 61000.0, 9000.0, 52000.0),
    (2024, 1, 22, 56000.0, 14000.0, 42000.0),
    (2024, 1, 23, 58000.0, 12000.0, 46000.0),
    (2024, 1, 24, 55000.0, 10000.0, 45000.0);

INSERT INTO "BAOCAOTON" ("Thang", "Nam", "MaSach", "TonDau", "PhatSinh", "TonCuoi")
VALUES
    (2024, 1, 1, 100, 20, 80),
    (2024, 1, 2, 90, 15, 75),
    (2024, 1, 3, 120, 30, 90),
    (2024, 1, 4, 80, 20, 60),
    (2023, 7, 90, 15, 75, 30),
    (2023, 8, 120, 30, 90, 30),
    (2024, 13, 120, 30, 90, 30),
    (2024, 14, 80, 20, 60, 30),
    (2024, 15, 110, 25, 85, 30);
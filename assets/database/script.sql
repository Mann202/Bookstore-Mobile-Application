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
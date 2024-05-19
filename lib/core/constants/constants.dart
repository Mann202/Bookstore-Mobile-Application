const String APP_NAME = "Shelfify";
const String DB_PATH = "assets\\database\\QLNS.db";

const String CUSTOMER_TABLE = "KHACHHANG";
const String BOOK_TABLE = "SACH";
const String BOOK_TITLE_TABLE = "DAUSACH";
const String CATEGORY_TABLE = "THELOAI";
const String AUTHOR_TABLE = "TACGIA";
const String PAYMENT_RECEIPT_TABLE = "PHIEUTHUTIEN";
const String DEBT_REPORT_TABLE = "BAOCAOCONGNO";
const String AUTHOR_INFO_TABLE = "CT_TACGIA";
const String INVOICE = "HOADON";
const String INVOICE_INFO = "CT_HOADON";
const String CONST_TABLE = "THAMSO";
const String INVENTORY_REPORT_TABLE = "BAOCAOTON";
const String BOOK_PURCHASE_RECEIPT_TABLE = "PHIEUNHAPSACH";
const String BOOK_PURCHASE_RECEIPT_INFO_TABLE = "CT_PHIEUNHAPSACH";

List<String> AUTHORS = [
  'Nguyễn Du',
  'Nam Cao',
  'Nguyễn Nhật Ánh',
  'Bảo Ninh',
  'Nguyễn Huy Thiệp',
  'Xuân Diệu',
  'Xuân Quỳnh',
  'Nguyễn Minh Châu',
  'Tô Hoài',
  'Nguyễn Quang Sáng',
  'Thạch Lam',
  'Tố Hữu',
  'Nguyễn Tuân',
  'Phan Bội Châu',
  'Vũ Trọng Phụng',
  'Lê Minh Khuê',
  'Nguyễn Ngọc Tư',
];

List<String> CATEGORIES = [
  'Thơ lục bát',
  'Truyện thơ',
  'Truyện ngắn',
  'Tiểu thuyết hiện thực',
  'Văn học thiếu nhi',
  'Tiểu thuyết',
  'Văn học chiến tranh',
  'Thơ',
  'Thơ ca cách mạng',
  'Tuỳ bút',
  'Văn xuôi',
  'Tiểu thuyết hiện thực phê phán',
];

List<String> BOOKTITLE = [
  'Truyện Kiều',
  'Chí Phèo',
  'Cho Tôi Xin Một Vé Đi Tuổi Thơ',
  'Nỗi Buồn Chiến Tranh',
  'Tướng Về Hưu',
  'Thơ Xuân Diệu',
  'Thuyền và Biển',
  'Dấu Chân Người Lính',
  'Dế Mèn Phiêu Lưu Ký',
  'Chiếc Lược Ngà',
  'Hai Đứa Trẻ',
  'Tập thơ Tố Hữu',
  'Vang Bóng Một Thời',
  'Ngục Trung Thư',
  'Số Đỏ',
  'Những Ngôi Sao Xa Xôi',
  'Cánh Đồng Bất Tận'
];

Map<String, int> CATERGORY_MAPPER = {
  'Truyện Kiều': 1,
  'Chí Phèo': 4,
  'Cho Tôi Xin Một Vé Đi Tuổi Thơ': 5,
  'Nỗi Buồn Chiến Tranh': 7,
  'Tướng Về Hưu': 6,
  'Thơ Xuân Diệu': 8,
  'Thuyền và Biển': 8,
  'Dấu Chân Người Lính': 7,
  'Dế Mèn Phiêu Lưu Ký': 5,
  'Chiếc Lược Ngà': 3,
  'Hai Đứa Trẻ': 3,
  'Tập thơ Tố Hữu': 9,
  'Vang Bóng Một Thời': 10,
  'Ngục Trung Thư': 9,
  'Số Đỏ': 12,
  'Những Ngôi Sao Xa Xôi': 3,
  'Cánh Đồng Bất Tận': 3
};

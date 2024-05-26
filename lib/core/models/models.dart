import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    int? customerId,
    required String customerName,
    required String address,
    required String phoneNumber,
    required String email,
    required double outstandingAmount,
  }) = _Customer;

  factory Customer.fromMap(Map<String, dynamic> map) => Customer(
        customerId: map['MaKhachHang'] as int,
        customerName: map['TenKhachHang'] as String,
        address: map['DiaChi'] as String,
        phoneNumber: map['SoDienThoai'] as String,
        email: map['Email'] as String,
        outstandingAmount: map['SoTienNo'] as double,
      );
}

@freezed
class PaymentReceipt with _$PaymentReceipt {
  const factory PaymentReceipt({
    required int receiptId,
    required int customerId,
    required double amountReceived,
    required DateTime receiptDate,
  }) = _PaymentReceipt;

  factory PaymentReceipt.fromMap(Map<String, dynamic> map) => PaymentReceipt(
        receiptId: map['MaPhieuThuTien'] as int,
        customerId: map['MaKhachHang'] as int,
        amountReceived: map['SoTienThu'] as double,
        receiptDate: DateTime.parse(map['NgayThu']),
      );
}

@freezed
class DebtReport with _$DebtReport {
  const factory DebtReport({
    required String customerId,
    required int month,
    required int year,
    required double startingDebt,
    required double endingDebt,
    required double debtChange,
  }) = _DebtReport;

  factory DebtReport.fromMap(Map<String, dynamic> map) => DebtReport(
        customerId: map['MaKhachHang'] as String,
        month: map['Thang'] as int,
        year: map['Nam'] as int,
        startingDebt: map['NoDau'] as double,
        debtChange: map['NoPhatSinh'] as double,
        endingDebt: map['NoCuoi'] as double,
      );
}

@freezed
class Invoice with _$Invoice {
  const factory Invoice({
    int? invoiceId,
    required Customer customer,
    required DateTime invoiceDate,
    required double totalAmount,
    required double paymentAmount,
    required double remainingAmount,
    required List<InvoiceDetail> invoiceDetails,
  }) = _Invoice;

  factory Invoice.fromMap(Map<String, dynamic> map) => Invoice(
        invoiceId: map['MaHoaDon'] as int,
        invoiceDate: map['NgayHoaDon'],
        totalAmount: map['TongTien'] as double,
        paymentAmount: map['SoTienThanhToan'] as double,
        remainingAmount: map['SoTienConLai'] as double,
        customer: Customer.fromMap(map['KhachHang']),
        invoiceDetails: (map['ChiTietHoaDon'] as List)
            .map((e) => InvoiceDetail.fromMap(e as Map<String, dynamic>))
            .toList(),
      );
}

@freezed
class InvoiceDetail with _$InvoiceDetail {
  const factory InvoiceDetail({
    required int quantity,
    required Book book,
    required double unitPrice,
    required double totalPrice,
  }) = _InvoiceDetail;

  factory InvoiceDetail.fromMap(Map<String, dynamic> map) => InvoiceDetail(
        quantity: map['SoLuong'] as int,
        unitPrice: map['DonGia'] as double,
        totalPrice: map['TongTien'] as double,
        book: Book.fromMap(map['Sach']),
      );
}

@freezed
class BookPurchaseReceipt with _$BookPurchaseReceipt {
  const factory BookPurchaseReceipt({
    int? receiptId,
    required DateTime purchaseDate,
    required int totalAmount,
    required List<BookPurchaseReceiptInfo> receipts,
  }) = _BookPurchaseReceipt;

  factory BookPurchaseReceipt.fromMap(Map<String, dynamic> map) =>
      BookPurchaseReceipt(
        receiptId: map['MaPhieuNhapSach'] as int,
        purchaseDate: map['NgayNhap'],
        totalAmount: map['TongTien'] as int,
        receipts: (map['ChiTietPhieuNhap'] as List)
            .map((e) =>
                BookPurchaseReceiptInfo.fromMap(e as Map<String, dynamic>))
            .toList(),
      );
}

@freezed
class BookPurchaseReceiptInfo with _$BookPurchaseReceiptInfo {
  const factory BookPurchaseReceiptInfo({
    required Book book,
    required int quantity,
    required double purchasePrice,
  }) = _BookPurchaseReceiptInfo;

  factory BookPurchaseReceiptInfo.fromMap(Map<String, dynamic> map) =>
      BookPurchaseReceiptInfo(
          book: Book.fromMap(map['Sach']),
          quantity: map['SoLuong'],
          purchasePrice: map['DonGiaNhap']);
}

@freezed
class Book with _$Book {
  const factory Book({
    int? id,
    required Author author,
    required BookTitle title,
    required Category category,
    required String publisher,
    required int publicationYear,
    required int quantityInStock,
    required double sellingPrice,
    required double purchasePrice,
  }) = _Book;

  factory Book.fromMap(Map<String, dynamic> map) => Book(
        id: map['MaSach'] as int,
        category: Category.fromMap(map['TheLoai'] as Map<String, dynamic>),
        title: BookTitle.fromMap(map['DauSach'] as Map<String, dynamic>),
        author: Author.fromMap(map['TacGia'] as Map<String, dynamic>),
        publisher: map['NhaXuatBan'] as String,
        publicationYear: map['NamXuatBan'] as int,
        quantityInStock: map['SoLuongTon'] as int,
        sellingPrice: map['DonGiaBan'] as double,
        purchasePrice: map['DonGiaNhap'] as double,
      );
}

@freezed
class Category with _$Category {
  const factory Category({
    int? categoryId,
    required String categoryName,
  }) = _Category;

  factory Category.fromMap(Map<String, dynamic> map) => Category(
        categoryId: map['MaTheLoai'] as int,
        categoryName: map['TenTheLoai'] as String,
      );
}

@freezed
class BookTitle with _$BookTitle {
  const factory BookTitle({
    int? bookTitleId,
    int? categoryId,
    required String bookTitle,
  }) = _BookTitle;

  factory BookTitle.fromMap(Map<String, dynamic> map) => BookTitle(
        bookTitleId: map['MaDauSach'] as int,
        categoryId: map['MaTheLoai'] as int,
        bookTitle: map['TenDauSach'] as String,
      );
}

@freezed
class Author with _$Author {
  const factory Author({
    int? authorId,
    required String authorName,
  }) = _Author;

  factory Author.fromMap(Map<String, dynamic> map) => Author(
        authorId: map['MaTacGia'] as int,
        authorName: map['TenTacGia'] as String,
      );
}

@freezed
class InventoryReport with _$InventoryReport {
  const factory InventoryReport({
    required int month,
    required int year,
    required int id,
    required int startingQuantity,
    required int quantityChange,
    required int endingQuantity,
  }) = _InventoryReport;

  factory InventoryReport.fromMap(Map<String, dynamic> map) => InventoryReport(
        month: map['Thang'] as int,
        year: map['Nam'] as int,
        id: map['MaSach'] as int,
        startingQuantity: map['TonDau'] as int,
        quantityChange: map['PhatSinh'] as int,
        endingQuantity: map['TonCuoi'] as int,
      );
}

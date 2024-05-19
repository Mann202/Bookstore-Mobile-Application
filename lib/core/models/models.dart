import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shelfify/core/constants/constants.dart';

part 'models.freezed.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required int customerId,
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
    required int invoiceId,
    required int customerId,
    required DateTime invoiceDate,
    required double totalAmount,
    required double paymentAmount,
    required double remainingAmount,
  }) = _Invoice;

  factory Invoice.fromMap(Map<String, dynamic> map) => Invoice(
        invoiceId: map['MaHoaDon'] as int,
        customerId: map['MaKhachHang'] as int,
        invoiceDate: map['NgayHoaDon'],
        totalAmount: map['TongTien'] as double,
        paymentAmount: map['SoTienThanhToan'] as double,
        remainingAmount: map['SoTienConLai'] as double,
      );
}

@freezed
class InvoiceInfo with _$InvoiceInfo {
  const factory InvoiceInfo({
    required int invoiceId,
    required int id,
    required int quantity,
    required double unitPrice,
    required double totalPrice,
  }) = _InvoiceInfo;

  factory InvoiceInfo.fromMap(Map<String, dynamic> map) => InvoiceInfo(
        invoiceId: map['MaHoaDon'] as int,
        id: map['MaSach'] as int,
        quantity: map['SoLuong'] as int,
        unitPrice: map['DonGia'] as double,
        totalPrice: map['TongTien'] as double,
      );
}

@freezed
class Book with _$Book {
  const factory Book({
    required int id,
    required int bookTitleId,
    required String publisher,
    required int publicationYear,
    required int quantityInStock,
    required double sellingPrice,
    required double purchasePrice,
  }) = _Book;

  factory Book.fromMap(Map<String, dynamic> map) => Book(
        id: map['MaSach'] as int,
        bookTitleId: map['MaDauSach'] as int,
        publisher: map['NhaXuatBan'] as String,
        publicationYear: map['NamXuatBan'] as int,
        quantityInStock: map['SoLuongTon'] as int,
        sellingPrice: map['DonGiaBan'] as double,
        purchasePrice: map['DonGiaNhap'] as double,
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

@freezed
class BookPurchaseReceipt with _$BookPurchaseReceipt {
  const factory BookPurchaseReceipt({
    required int receiptId,
    required DateTime purchaseDate,
    required int totalAmount,
  }) = _BookPurchaseReceipt;

  factory BookPurchaseReceipt.fromMap(Map<String, dynamic> map) =>
      BookPurchaseReceipt(
        receiptId: map['MaPhieuNhapSach'] as int,
        purchaseDate: map['NgayNhap'],
        totalAmount: map['TongTien'] as int,
      );
}

@freezed
class BookPurchaseReceiptInfo with _$BookPurchaseReceiptInfo {
  const factory BookPurchaseReceiptInfo({
    required int receiptId,
    required int id,
    required int quantity,
    required double purchasePrice,
    required double totalPrice,
  }) = _BookPurchaseReceiptInfo;

  factory BookPurchaseReceiptInfo.fromMap(Map<String, dynamic> map) =>
      BookPurchaseReceiptInfo(
        receiptId: map['MaPhieuNhapSach'] as int,
        id: map['MaSach'] as int,
        quantity: map['SoLuong'] as int,
        purchasePrice: map['DonGia'] as double,
        totalPrice: map['ThanhTien'] as double,
      );
}

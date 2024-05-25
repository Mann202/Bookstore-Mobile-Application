import 'package:freezed_annotation/freezed_annotation.dart';

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
}

@freezed
class PaymentReceipt with _$PaymentReceipt {
  const factory PaymentReceipt({
    required int receiptId,
    required int customerId,
    required double amountReceived,
    required DateTime receiptDate,
  }) = _PaymentReceipt;
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
class InventoryReport with _$InventoryReport {
  const factory InventoryReport({
    required int month,
    required int year,
    required int id,
    required int startingQuantity,
    required int quantityChange,
    required int endingQuantity,
  }) = _InventoryReport;
}

@freezed
class BookPurchaseReceipt with _$BookPurchaseReceipt {
  const factory BookPurchaseReceipt({
    required int receiptId,
    required DateTime purchaseDate,
    required int totalAmount,
  }) = _BookPurchaseReceipt;
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
}

@freezed
class BookCategory with _$BookCategory {
  const factory BookCategory({
    required int categoryId,
    required String categoryName,
  }) = _BookCategory;
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    required String genreId,
    required String genreName,
  }) = _Genre;
}

@freezed
class AuthorInfo with _$AuthorInfo {
  const factory AuthorInfo({
    required int id,
    required int authorId,
  }) = _AuthorInfo;
}

@freezed
class Author with _$Author {
  const factory Author({
    required int authorId,
    required String authorName,
  }) = _Author;
}

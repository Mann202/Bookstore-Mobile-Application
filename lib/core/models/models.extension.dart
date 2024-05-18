import 'package:shelfify/core/models/models.dart';

extension BookExtension on Book {
  Book fromMap(Map<String, dynamic> map) {
    return Book(
      bookId: map['MaSach'] as int,
      bookCategoryId: map['MaDauSach'] as int,
      publisher: map['NhaXuatBan'] as String,
      publicationYear: map['NamXuatBan'] as int,
      quantityInStock: map['SoLuongTon'] as int,
      sellingPrice: map['DonGiaBan'] as double,
      purchasePrice: map['DonGiaNhap'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaSach': bookId,
      'MaDauSach': bookCategoryId,
      'NhaXuatBan': publisher,
      'NamXuatBan': publicationYear,
      'SoLuongTon': quantityInStock,
      'DonGiaBan': sellingPrice,
      'DonGiaNhap': purchasePrice,
    };
  }
}

extension InventoryReportExtension on InventoryReport {
  InventoryReport fromMap(Map<String, dynamic> map) {
    return InventoryReport(
      month: map['Thang'] as int,
      year: map['Nam'] as int,
      bookId: map['MaSach'] as int,
      startingQuantity: map['SoLuongDauKy'] as int,
      quantityChange: map['SoLuongPhatSinh'] as int,
      endingQuantity: map['SoLuongCuoiKy'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Thang': month,
      'Nam': year,
      'MaSach': bookId,
      'SoLuongDauKy': startingQuantity,
      'SoLuongPhatSinh': quantityChange,
      'SoLuongCuoiKy': endingQuantity,
    };
  }
}

extension BookPurchaseReceiptExtension on BookPurchaseReceipt {
  BookPurchaseReceipt fromMap(Map<String, dynamic> map) {
    return BookPurchaseReceipt(
      receiptId: map['MaPhieuNhap'] as int,
      purchaseDate: DateTime.parse(map['NgayNhap']),
      totalAmount: map['TongTien'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaPhieuNhap': receiptId,
      'NgayNhap': purchaseDate.toIso8601String(),
      'TongTien': totalAmount,
    };
  }
}

extension BookPurchaseReceiptInfoExtension on BookPurchaseReceiptInfo {
  BookPurchaseReceiptInfo fromMap(Map<String, dynamic> map) {
    return BookPurchaseReceiptInfo(
      receiptId: map['MaPhieuNhap'] as int,
      bookId: map['MaSach'] as int,
      quantity: map['SoLuong'] as int,
      purchasePrice: map['DonGiaNhap'] as double,
      totalPrice: map['ThanhTien'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaPhieuNhap': receiptId,
      'MaSach': bookId,
      'SoLuong': quantity,
      'DonGiaNhap': purchasePrice,
      'ThanhTien': totalPrice,
    };
  }
}

extension CustomerExtension on Customer {
  Customer fromMap(Map<String, dynamic> map) {
    return Customer(
      customerId: map['MaKhachHang'] as int,
      customerName: map['TenKhachHang'] as String,
      phoneNumber: map['SoDienThoai'] as String,
      address: map['DiaChi'] as String,
      email: map['Email'] as String,
      outstandingAmount: map['SoTienNo'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaKhachHang': customerId,
      'TenKhachHang': customerName,
      'SoDienThoai': phoneNumber,
      'DiaChi': address,
    };
  }
}

extension PaymentReceiptExtension on PaymentReceipt {
  PaymentReceipt fromMap(Map<String, dynamic> map) {
    return PaymentReceipt(
      receiptId: map['MaPhieuThu'] as int,
      customerId: map['MaKhachHang'] as int,
      receiptDate: DateTime.parse(map['NgayThu']),
      amountReceived: map['SoTienThu'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaPhieuThu': receiptId,
      'MaKhachHang': customerId,
      'NgayThu': receiptDate.toIso8601String(),
      'SoTienThu': amountReceived,
    };
  }
}

extension DebtReportExtension on DebtReport {
  DebtReport fromMap(Map<String, dynamic> map) {
    return DebtReport(
      customerId: map['MaKhachHang'] as String,
      month: map['Thang'] as int,
      year: map['Nam'] as int,
      startingDebt: map['NoDau'] as double,
      debtChange: map['NoPhatSinh'] as double,
      endingDebt: map['NoCuoi'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaKhachHang': customerId,
      'Thang': month,
      'Nam': year,
      'NoDau': startingDebt,
      'NoPhatSinh': debtChange,
      'NoCuoi': endingDebt,
    };
  }
}

extension InvoiceExtension on Invoice {
  Invoice fromMap(Map<String, dynamic> map) {
    return Invoice(
      invoiceId: map['MaHoaDon'] as int,
      customerId: map['MaKhachHang'] as int,
      invoiceDate: DateTime.parse(map['NgayLap']),
      totalAmount: map['TongTien'] as double,
      paymentAmount: map['ThanhToan'] as double,
      remainingAmount: map['ConLai'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaHoaDon': invoiceId,
      'MaKhachHang': customerId,
      'NgayLap': invoiceDate.toIso8601String(),
      'TongTien': totalAmount,
      'ThanhToan': paymentAmount,
      'ConLai': remainingAmount,
    };
  }
}

extension InvoiceInfoExtension on InvoiceInfo {
  InvoiceInfo fromMap(Map<String, dynamic> map) {
    return InvoiceInfo(
      invoiceId: map['MaHoaDon'] as int,
      bookId: map['MaSach'] as int,
      quantity: map['SoLuong'] as int,
      unitPrice: map['DonGiaBan'] as double,
      totalPrice: map['ThanhTien'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaHoaDon': invoiceId,
      'MaSach': bookId,
      'SoLuong': quantity,
      'DonGiaBan': unitPrice,
      'ThanhTien': totalPrice,
    };
  }
}

extension BookCategoryExtension on BookCategory {
  BookCategory fromMap(Map<String, dynamic> map) {
    return BookCategory(
      bookCategoryId: map['MaDauSach'] as int,
      categoryName: map['TenDauSach'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaDauSach': bookCategoryId,
      'TenDauSach': categoryName,
    };
  }
}

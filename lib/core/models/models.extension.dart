import 'package:shelfify/core/models/models.dart';

extension BookExtension on Book {
  Map<String, dynamic> toMap() {
    return {
      'MaSach': id,
      'DauSach': title.toMap(),
      'TacGia': author.toMap(),
      'TheLoai': category.toMap(),
      'NhaXuatBan': publisher,
      'NamXuatBan': publicationYear,
      'SoLuongTon': quantityInStock,
      'DonGiaBan': sellingPrice,
      'DonGiaNhap': purchasePrice,
    };
  }

  String getAuthor() {
    return author.authorName;
  }

  String getTitle() {
    return title.bookTitle;
  }

  String getCategory() {
    return category.categoryName;
  }
}

extension BookTitleExtension on BookTitle {
  Map<String, dynamic> toMap() {
    return {
      "MaDauSach": bookTitleId,
      "TenDauSach": bookTitle,
      "MaTheLoai": categoryId
    };
  }
}

extension AuthorExtension on Author {
  Map<String, dynamic> toMap() {
    return {
      "MaTacGia": authorId,
      "TenTacGia": authorName,
    };
  }
}

extension CategoryExtension on Category {
  Map<String, dynamic> toMap() {
    return {
      "MaTheLoai": categoryId,
      "TenTheLoai": categoryName,
    };
  }
}

extension InventoryReportExtension on InventoryReport {
  Map<String, dynamic> toMap() {
    return {
      'Thang': month,
      'Nam': year,
      'MaSach': id,
      'SoLuongDauKy': startingQuantity,
      'SoLuongPhatSinh': quantityChange,
      'SoLuongCuoiKy': endingQuantity,
    };
  }
}

extension BookPurchaseReceiptExtension on BookPurchaseReceipt {
  BookPurchaseReceipt toModel(Map<String, dynamic> map) {
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
  BookPurchaseReceiptInfo toModel(Map<String, dynamic> map) {
    return BookPurchaseReceiptInfo(
      receiptId: map['MaPhieuNhap'] as int,
      id: map['MaSach'] as int,
      quantity: map['SoLuong'] as int,
      purchasePrice: map['DonGiaNhap'] as double,
      totalPrice: map['ThanhTien'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaPhieuNhap': receiptId,
      'MaSach': id,
      'SoLuong': quantity,
      'DonGiaNhap': purchasePrice,
      'ThanhTien': totalPrice,
    };
  }
}

extension CustomerExtension on Customer {
  Customer toModel(Map<String, dynamic> map) {
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
  PaymentReceipt toModel(Map<String, dynamic> map) {
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
  DebtReport toModel(Map<String, dynamic> map) {
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
  Invoice toModel(Map<String, dynamic> map) {
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
  InvoiceInfo toModel(Map<String, dynamic> map) {
    return InvoiceInfo(
      invoiceId: map['MaHoaDon'] as int,
      id: map['MaSach'] as int,
      quantity: map['SoLuong'] as int,
      unitPrice: map['DonGiaBan'] as double,
      totalPrice: map['ThanhTien'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'MaHoaDon': invoiceId,
      'MaSach': id,
      'SoLuong': quantity,
      'DonGiaBan': unitPrice,
      'ThanhTien': totalPrice,
    };
  }
}

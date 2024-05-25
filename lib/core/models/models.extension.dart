import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/book/data/datasource/books_database.dart';

extension InvoiceExtension on Invoice {
  Map<String, dynamic> toMap() {
    return {
      'MaHoaDon': invoiceId,
      'NgayLap': invoiceDate.toIso8601String(),
      'TongTien': totalAmount,
      'ChiTietHoaDon': invoiceDetails.map((e) => e.toMap()).toList(),
      'KhachHang': customer.toMap(),
      'ThanhToan': paymentAmount,
      'ConLai': remainingAmount,
    };
  }
}

extension InvoiceDetailExtension on InvoiceDetail {
  Map<String, dynamic> toMap() {
    return {
      'SoLuong': quantity,
      'Sach': book.toMap(),
      'DonGia': unitPrice,
      'TongTien': totalPrice,
    };
  }
}

extension CustomerExtension on Customer {
  Map<String, dynamic> toMap() {
    return {
      'TenKhachHang': customerName,
      'SoDienThoai': phoneNumber,
      'DiaChi': address,
      'Email': email,
      'SoTienNo': outstandingAmount,
    };
  }
}

extension BookPurchaseReceiptExtension on BookPurchaseReceipt {
  Map<String, dynamic> toMap() {
    return {
      'NgayNhap': purchaseDate.toIso8601String(),
      'TongTien': totalAmount,
      'ChiTietPhieuNhap': receipts.map((e) => e.toMap()).toList(),
    };
  }
}

extension BookPurchaseReceiptInfoExtension on BookPurchaseReceiptInfo {
  Map<String, dynamic> toMap() {
    return {
      'Sach': book.toMap(),
      'SoLuong': quantity,
      'DonGiaNhap': purchasePrice,
    };
  }
}

extension BookExtension on Book {
  Map<String, dynamic> toMap() {
    return {
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
}

extension BookTitleExtension on BookTitle {
  Map<String, dynamic> toMap() {
    return {
      "TenDauSach": bookTitle,
    };
  }
}

extension AuthorExtension on Author {
  Map<String, dynamic> toMap() {
    return {
      "TenTacGia": authorName,
    };
  }
}

extension CategoryExtension on Category {
  Map<String, dynamic> toMap() {
    return {
      "TenTheLoai": categoryName,
    };
  }
}

extension InventoryReportExtension on InventoryReport {
  static InventoryReport toModel(Map<String, dynamic> map) {
    return InventoryReport(
      month: map['Thang'] as int,
      year: map['Nam'] as int,
      id: map['MaSach'] as int,
      startingQuantity: map['SoLuongDauKy'] as int,
      quantityChange: map['SoLuongPhatSinh'] as int,
      endingQuantity: map['SoLuongCuoiKy'] as int,
    );
  }

  static Map<String, dynamic> toMap(final InventoryReport model) {
    return {
      'Thang': model.month,
      'Nam': model.year,
      'MaSach': model.id,
      'SoLuongDauKy': model.startingQuantity,
      'SoLuongPhatSinh': model.quantityChange,
      'SoLuongCuoiKy': model.endingQuantity,
    };
  }
}

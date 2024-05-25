import 'package:shelfify/core/models/models.dart';

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

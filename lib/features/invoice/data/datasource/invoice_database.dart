import 'package:shelfify/core/services/database.provider.dart';

typedef InvoiceEntity = Map<String, dynamic>;
typedef InvoiceDetailEntity = Map<String, dynamic>;

abstract class InvoiceDatabase {
  Future<void> createInvoice(InvoiceEntity invoice);
  Future<List<InvoiceEntity>> getAllInvoices();
}

class InvoiceDatabaseImpl implements InvoiceDatabase {
  static const _invoiceTable = 'HOADON';
  static const _invoiceDetailTable = 'CT_HOADON';
  static const _bookTable = 'SACH';
  static const _customerTable = 'KHACHHANG';

  @override
  Future<void> createInvoice(InvoiceEntity entity) async {
    final db = await DBProvider.db.database;
    await db.insert(_invoiceTable, {
      'MaKhachHang': entity['KhachHang']['MaKhachHang'],
      'NgayLap': entity['NgayLap'],
      'TongTien': entity['TongTien'],
      'ThanhToan': entity['ThanhToan'],
      'ConLai': entity['ConLai'],
    });

    for (final detail in entity['ChiTietHoaDon']) {
      await db.insert(_invoiceDetailTable, {
        'MaHoaDon': entity['MaHoaDon'],
        'MaSach': detail['Sach']['MaSach'],
        'SoLuong': detail['SoLuong'],
        'DonGia': detail['DonGia'],
        'TongTien': detail['TongTien'],
      });
    }
  }

  @override
  Future<List<InvoiceEntity>> getAllInvoices() async {
    final db = await DBProvider.db.database;
    final List<Map<String, dynamic>> invoices = await db.query(_invoiceTable);
    final List<Map<String, dynamic>> invoiceDetails =
        await db.query(_invoiceDetailTable);
    final List<Map<String, dynamic>> books = await db.query(_bookTable);
    final List<Map<String, dynamic>> customers = await db.query(_customerTable);

    return invoices.map((invoice) {
      final customer = customers.firstWhere(
          (customer) => customer['MaKhachHang'] == invoice['MaKhachHang']);
      final details = invoiceDetails
          .where((detail) => detail['MaHoaDon'] == invoice['MaHoaDon'])
          .map((detail) {
        final book =
            books.firstWhere((book) => book['MaSach'] == detail['MaSach']);
        return {
          'SoLuong': detail['SoLuong'],
          'DonGia': detail['DonGia'],
          'TongTien': detail['TongTien'],
          'Sach': book,
        };
      }).toList();

      return {
        'MaHoaDon': invoice['MaHoaDon'],
        'NgayLap': invoice['NgayLap'],
        'TongTien': invoice['TongTien'],
        'ThanhToan': invoice['ThanhToan'],
        'ConLai': invoice['ConLai'],
        'ChiTietHoaDon': details,
        'KhachHang': customer,
      };
    }).toList();
  }
}

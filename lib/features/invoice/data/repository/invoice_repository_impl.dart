import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:shelfify/features/invoice/data/datasource/invoice_database.dart';
import 'package:shelfify/features/invoice/domain/repository/invoice_repository.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  final InvoiceDatabase database;

  InvoiceRepositoryImpl(this.database);

  @override
  Future<void> createInvoice(Invoice invoice) async {
    return await database.createInvoice(invoice.toMap());
  }

  @override
  Future<List<Invoice>> getAllInvoices() async {
    final invoiceListEntity = await database.getAllInvoices();
    return invoiceListEntity
        .map((invoice) => Invoice.fromMap(invoice))
        .toList();
  }
}

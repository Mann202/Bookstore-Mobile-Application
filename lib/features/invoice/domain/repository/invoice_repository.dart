import 'package:shelfify/core/models/models.dart';

abstract class InvoiceRepository {
  Future<void> createInvoice(Invoice invoice);
  Future<List<Invoice>> getAllInvoices();
}

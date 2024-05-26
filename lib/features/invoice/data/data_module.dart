import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/invoice/data/datasource/invoice_database.dart';
import 'package:shelfify/features/invoice/data/repository/invoice_repository_impl.dart';
import 'package:shelfify/features/invoice/domain/repository/invoice_repository.dart';

final invoiceDatabaseProvider =
    Provider<InvoiceDatabase>((_) => InvoiceDatabaseImpl());
final invoiceRepositoryProvider = Provider<InvoiceRepository>(
    (ref) => InvoiceRepositoryImpl(ref.read(invoiceDatabaseProvider)));

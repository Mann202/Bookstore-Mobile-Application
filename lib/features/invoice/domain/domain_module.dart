import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/invoice/data/data_module.dart';
import 'package:shelfify/features/invoice/domain/invoice_usecase.dart';

final getAllInvoicesUseCaseProvider = Provider<GetAllInvoicesUseCase>((ref) {
  final repository = ref.watch(invoiceRepositoryProvider);
  return GetAllInvoicesUseCaseImpl(repository);
});

final createInvoiceUseCaseProvider = Provider<CreateInvoiceUseCase>((ref) {
  final repository = ref.watch(invoiceRepositoryProvider);
  return CreateInvoiceUseCaseImpl(repository);
});

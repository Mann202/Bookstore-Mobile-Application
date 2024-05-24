import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/invoice/domain/repository/invoice_repository.dart';

abstract class CreateInvoiceUseCase {
  Future<void> execute(Invoice invoice);
}

class CreateInvoiceUseCaseImpl implements CreateInvoiceUseCase {
  final InvoiceRepository repository;

  CreateInvoiceUseCaseImpl(this.repository);
  @override
  Future<void> execute(Invoice invoice) async {
    return await repository.createInvoice(invoice);
  }
}

abstract class GetAllInvoicesUseCase {
  Future<List<Invoice>> execute();
}

class GetAllInvoicesUseCaseImpl implements GetAllInvoicesUseCase {
  final InvoiceRepository repository;

  GetAllInvoicesUseCaseImpl(this.repository);

  @override
  Future<List<Invoice>> execute() async {
    return await repository.getAllInvoices();
  }
}

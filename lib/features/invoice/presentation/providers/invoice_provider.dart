import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/state/state.dart';
import 'package:shelfify/features/invoice/domain/domain_module.dart';
import 'package:shelfify/features/invoice/domain/invoice_usecase.dart';

final invoiceStateNotiferProvider =
    StateNotifierProvider<InvoiceStateNotifier, State<List<Invoice>>>((ref) {
  return InvoiceStateNotifier(
    ref.read(getAllInvoicesUseCaseProvider),
    ref.read(createInvoiceUseCaseProvider),
  );
});

class InvoiceStateNotifier extends StateNotifier<State<List<Invoice>>> {
  final GetAllInvoicesUseCase getAllInvoicesUseCase;
  final CreateInvoiceUseCase createInvoiceUseCase;

  InvoiceStateNotifier(this.getAllInvoicesUseCase, this.createInvoiceUseCase)
      : super(const State.init()) {
    getAllInvoices();
  }

  getAllInvoices() async {
    try {
      state = const State.loading();
      final invoices = await getAllInvoicesUseCase.execute();
      state = State.success(invoices);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }

  createInvoice(Invoice invoice) async {
    try {
      state = const State.loading();
      await createInvoiceUseCase.execute(invoice);
      getAllInvoices();
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}

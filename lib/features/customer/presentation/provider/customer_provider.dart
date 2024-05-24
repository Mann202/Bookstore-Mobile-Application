import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/state/state.dart';
import 'package:shelfify/features/customer/domain/customer_usecase.dart';
import 'package:shelfify/features/customer/domain/domain_module.dart';

final customerStateNotifierProvider =
    StateNotifierProvider<CustomerStateNotifier, State<List<Customer>>>((ref) =>
        CustomerStateNotifier(ref.read(getAllCustomersUseCaseProvider)));

class CustomerStateNotifier extends StateNotifier<State<List<Customer>>> {
  final GetAllCustomersUseCase getAllCustomersUseCase;

  CustomerStateNotifier(this.getAllCustomersUseCase)
      : super(const State.init()) {
    getAllCustomer();
  }

  getAllCustomer() async {
    try {
      state = const State.loading();
      final customers = await getAllCustomersUseCase.execute();
      state = State.success(customers);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}

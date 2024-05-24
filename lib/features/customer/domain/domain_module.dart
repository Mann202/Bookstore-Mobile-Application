import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/customer/data/data_module.dart';
import 'package:shelfify/features/customer/domain/customer_usecase.dart';

final getAllCustomersUseCaseProvider = Provider<GetAllCustomersUseCase>((ref) {
  final repository = ref.watch(customerRepositoryProvider);
  return GetAllCustomersUseCaseImpl(repository);
});

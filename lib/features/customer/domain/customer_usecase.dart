import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/customer/domain/repository/customer_repository.dart';

abstract class GetAllCustomersUseCase {
  Future<List<Customer>> execute();
}

class GetAllCustomersUseCaseImpl implements GetAllCustomersUseCase {
  final CustomerRepository repository;

  const GetAllCustomersUseCaseImpl(this.repository);

  @override
  Future<List<Customer>> execute() async {
    return await repository.getAllCustomers();
  }
}

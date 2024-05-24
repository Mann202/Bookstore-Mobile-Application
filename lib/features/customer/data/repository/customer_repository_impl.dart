import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/customer/data/datasource/customer_database.dart';
import 'package:shelfify/features/customer/domain/repository/customer_repository.dart';

class CustomerRepositoryImpl implements CustomerRepository {
  final CustomerDatabase database;

  const CustomerRepositoryImpl(this.database);

  @override
  Future<List<Customer>> getAllCustomers() async {
    final customerListEntity = await database.getAllCustomers();
    return customerListEntity
        .map((customer) => Customer.fromMap(customer))
        .toList();
  }
}

import 'package:shelfify/core/models/models.dart';

abstract class CustomerRepository {
  Future<List<Customer>> getAllCustomers();
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/customer/data/datasource/customer_database.dart';
import 'package:shelfify/features/customer/data/repository/customer_repository_impl.dart';
import 'package:shelfify/features/customer/domain/repository/customer_repository.dart';

final customerDatabaseProvider =
    Provider<CustomerDatabase>((_) => CustomerDatabaseImpl());
final customerRepositoryProvider = Provider<CustomerRepository>(
    (ref) => CustomerRepositoryImpl(ref.read(customerDatabaseProvider)));

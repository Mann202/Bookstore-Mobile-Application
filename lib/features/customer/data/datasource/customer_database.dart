import 'package:shelfify/core/services/database.provider.dart';

typedef CustomerListEntity = List<CustomerEntity>;
typedef CustomerEntity = Map<String, dynamic>;

abstract class CustomerDatabase {
  Future<CustomerListEntity> getAllCustomers();
}

class CustomerDatabaseImpl implements CustomerDatabase {
  static const _customerTable = 'KHACHHANG';

  @override
  Future<CustomerListEntity> getAllCustomers() async {
    final db = await DBProvider.db.database;
    final CustomerListEntity entity = await db.query(_customerTable);
    return entity;
  }
}

import 'package:shelfify/core/services/database.provider.dart';
import 'package:sqflite/sqflite.dart';

typedef PurchaseReceiptEntity = Map<String, dynamic>;
typedef PurchaseReceiptInfoEntity = Map<String, dynamic>;
typedef PurchaseReceiptListEntity = List<PurchaseReceiptEntity>;
typedef PurchaseReceiptInfoListEntity = List<PurchaseReceiptInfoEntity>;

abstract class PurchaseReceiptDatabase {
  Future<PurchaseReceiptEntity> getAllPurchaseReceipt();
  Future<PurchaseReceiptEntity> insertPurchaseReceipt(
      final PurchaseReceiptEntity purchaseReceiptEntity);
}

class PurchaseReceiptDatabaseImpl implements PurchaseReceiptDatabase {
  static const _purchaseReceiptTable = 'PHIEUNHAPSACH';
  static const _purchaseReceiptInfoTable = 'CT_PHIEUNHAPSACH';
  static const _bookTable = 'SACH';
  static const _columnId = 'MaPhieuNhap';

  @override
  Future<PurchaseReceiptEntity> getAllPurchaseReceipt() async {
    final db = await DBProvider.db.database;

    final purchaseReceiptTable = await db.query(_purchaseReceiptTable);
    final purchaseReceiptInfoTable = await db.query(_purchaseReceiptInfoTable);

    final PurchaseReceiptListEntity entity =
        purchaseReceiptTable.map((purchaseReceipt) {
      final purchaseReceiptInfo = purchaseReceiptInfoTable
          .where(
            (info) => info['MaPhieuNhap'] == purchaseReceipt['MaPhieuNhap'],
          )
          .toList();
      return {
        ...purchaseReceipt,
        'ChiTietPhieuNhap': purchaseReceiptInfo,
      };
    }).toList();
    return entity.first;
  }

  @override
  Future<PurchaseReceiptEntity> insertPurchaseReceipt(
      final PurchaseReceiptEntity purchaseReceipt) async {
    final db = await DBProvider.db.database;
    late final PurchaseReceiptEntity purchaseReceiptEntity;
    await db.transaction((txn) async {
      final id = await txn.insert(
        _purchaseReceiptTable,
        purchaseReceipt,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      purchaseReceiptEntity = {
        ...purchaseReceipt,
        _columnId: id,
      };
      for (final info in purchaseReceipt['ChiTietPhieuNhap']) {
        await txn.insert(
          _purchaseReceiptInfoTable,
          {
            ...info,
            _columnId: id,
          },
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
    return purchaseReceiptEntity;
  }
}

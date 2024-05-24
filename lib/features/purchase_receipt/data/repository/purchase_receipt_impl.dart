import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:shelfify/features/purchase_receipt/data/datasource/purchase_receipt_database.dart';
import 'package:shelfify/features/purchase_receipt/domain/repository/purchase_receipt_repository.dart';

class PurchaseReceiptImpl extends PurchaseReceiptRepository {
  final PurchaseReceiptDatabase purchaseReceiptDataSource;

  PurchaseReceiptImpl({required this.purchaseReceiptDataSource});

  @override
  Future<void> createPurchaseReceipt(BookPurchaseReceipt purchaseReceipt) {
    return purchaseReceiptDataSource
        .insertPurchaseReceipt(purchaseReceipt.toMap());
  }

  @override
  Future<BookPurchaseReceipt> getAllPurchaseReceipt() {
    // TODO: implement getAllPurchaseReceipt
    throw UnimplementedError();
  }
}

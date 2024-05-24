
import 'package:shelfify/core/models/models.dart';

abstract class PurchaseReceiptRepository {
  Future<BookPurchaseReceipt> getAllPurchaseReceipt();
  Future<void> createPurchaseReceipt(BookPurchaseReceipt purchaseReceipt);
}
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/purchase_receipt/domain/repository/purchase_receipt_repository.dart';

abstract class CreatePurchaseReceiptUseCase {
  Future<BookPurchaseReceipt> execute(BookPurchaseReceipt purchaseReceipt);
}

class CreatePurchaseReceiptUseCaseImpl implements CreatePurchaseReceiptUseCase {
  final PurchaseReceiptRepository repository;

  const CreatePurchaseReceiptUseCaseImpl(this.repository);

  @override
  Future<BookPurchaseReceipt> execute(
      BookPurchaseReceipt purchaseReceipt) async {
    await repository.createPurchaseReceipt(purchaseReceipt);
    return purchaseReceipt;
  }
}



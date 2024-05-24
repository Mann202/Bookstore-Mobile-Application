import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/purchase_receipt/data/data_module.dart';
import 'package:shelfify/features/purchase_receipt/domain/purchase_receipt_usecase.dart';

final createPurchaseReceiptUseCaseProvider =
    Provider<CreatePurchaseReceiptUseCase>((ref) {
  final repository = ref.watch(purchaseReceiptRepositoryProvider);
  return CreatePurchaseReceiptUseCaseImpl(repository);
});

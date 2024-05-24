import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/purchase_receipt/data/datasource/purchase_receipt_database.dart';
import 'package:shelfify/features/purchase_receipt/data/repository/purchase_receipt_impl.dart';
import 'package:shelfify/features/purchase_receipt/domain/repository/purchase_receipt_repository.dart';

final purchaseRecepitDatabaseProvider =
    Provider<PurchaseReceiptDatabase>((_) => PurchaseReceiptDatabaseImpl());
final purchaseReceiptRepositoryProvider = Provider<PurchaseReceiptRepository>(
    (ref) => PurchaseReceiptImpl(
        purchaseReceiptDataSource: ref.read(purchaseRecepitDatabaseProvider)));

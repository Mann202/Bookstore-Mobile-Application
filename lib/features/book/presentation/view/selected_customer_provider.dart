import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/models/models.dart';

final selectedCustomerStatedProvider = StateProvider<Customer>((ref) =>
    Customer(
        customerName: "",
        address: "",
        phoneNumber: "",
        email: "",
        outstandingAmount: 10.0));

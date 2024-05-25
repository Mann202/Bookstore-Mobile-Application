import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/features/book/presentation/view/selected_customer_provider.dart';
import 'package:shelfify/features/purchase_receipt/presentation/providers/purchase_receipt_provider.dart';



class PrintReceiptScreen extends ConsumerWidget {
  const PrintReceiptScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCustomer = ref.watch(selectedCustomerStatedProvider);
    final selectedCustomerTienThu = ref.watch(soTienThuStatedProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Xem phiếu thu tiền',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue.shade100),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildInfoColumn('Mã phiếu thu', 'PT0010'),
                        buildInfoColumn('Ngày thu', '25-05-2023'),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            buildInfoRow('Họ tên khách hàng', selectedCustomer.customerName, isBold: true),
            buildInfoRow('Địa chỉ', selectedCustomer.address, isOptional: true),
            buildInfoRow('Điện thoại', selectedCustomer.phoneNumber, isOptional: true),
            buildInfoRow('Email', selectedCustomer.email, isOptional: true),
            buildInfoRow('Công nợ cũ', selectedCustomer.outstandingAmount.toString(),
                color: Colors.red, isBold: true),
            buildInfoRow('Số tiền thu', selectedCustomerTienThu,
                color: Colors.green, isBold: true),
            buildInfoRow('Còn lại', (selectedCustomer.outstandingAmount - double.parse(selectedCustomerTienThu)).toString() , isBold: true),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildInfoColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
        Row(
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildInfoRow(String label, String value,
      {bool isOptional = false, Color? color, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: isOptional ? Colors.grey : Colors.black,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: color ?? Colors.black,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

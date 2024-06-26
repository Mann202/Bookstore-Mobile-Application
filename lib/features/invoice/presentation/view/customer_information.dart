import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/book/presentation/view/select_customer_bottom_sheet.screen.dart';
import 'package:shelfify/features/book/presentation/view/selected_customer_provider.dart';
import 'package:shelfify/features/invoice/presentation/view/create_invoice_screen.dart';

class CustomerInformation extends ConsumerWidget {
  const CustomerInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(selectedCustomerStatedProvider);

    return Form(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Mã hóa đơn",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20)),
                      const SizedBox(height: 5),
                      Text(
                        CreateInvoiceScreen.getNewInvoiceId(ref),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Ngày lập",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      const SizedBox(height: 5),
                      Text(
                        CreateInvoiceScreen.getTodayFormat(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Thông tin khách hàng",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: const TextStyle(fontSize: 20, color: Colors.black),
              onTap: () {
                showModalBottomSheet(
                    constraints: const BoxConstraints.expand(),
                    context: context,
                    builder: (context) {
                      return const SelectCustomerBottomSheet();
                    });
              },
              decoration: InputDecoration(
                hintText: customer.customerName == ""
                    ? "Ten Khach Hang"
                    : customer.customerName,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
                filled: true,
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: const Color(0xffA7A7A8),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.grey[400]!,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.grey[400]!,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            _buildDetailRow(
              "Công nợ cũ",
              customer.outstandingAmount.toString(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Thanh toán",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Nhập số tiền thanh toán',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.grey[400]!,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.grey[400]!,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  // Viền khi TextField được focus
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

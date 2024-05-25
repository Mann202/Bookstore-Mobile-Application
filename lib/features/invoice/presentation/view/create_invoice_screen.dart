import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/invoice/presentation/providers/invoice_provider.dart';
import 'package:shelfify/features/invoice/presentation/view/customer_information.dart';
import 'package:shelfify/features/invoice/presentation/view/general_information.dart';

class CreateInvoiceScreen extends ConsumerWidget {
  const CreateInvoiceScreen({super.key});

  static String getNewInvoiceId(WidgetRef ref) {
    final invoiceState = invoiceStateNotiferProvider;

    ref.watch(invoiceState).maybeWhen(
          success: (invoices) {
            return "HD${(invoices.length + 1).toString().padLeft(2, '0')}";
          },
          orElse: () => 'HD001',
        );
    return "HD001";
  }

  static String getTodayFormat() {
    final today = DateTime.now();
    return "${today.day}-${today.month}-${today.year}";
  }

  String getTotal(List<InvoiceDetail> details) {
    if (details.isEmpty) return '0';

    return details
        .map((detail) => detail.totalPrice)
        .reduce((a, b) => a + b)
        .toString();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(selectedDetailsProvider);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Tạo hoá đơn bán sách',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(0xFF4758A8),
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF4758A8),
              size: 35,
            ),
            onPressed: () {
              context.pop();
            },
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Thông tin chung",
                      style: TextStyle(
                        fontFamily: AppTextStyles.fontFamily,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Tab(
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Khách hàng",
                      style: TextStyle(
                        fontFamily: AppTextStyles.fontFamily,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Color(0xFFDBFFE4),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            GeneralInformation(),
            CustomerInformation(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(16),
          child: Container(
            color: const Color(0xFFE5ECFF),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tổng tiền: ${getTotal(details)}',
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                                title: const Text('Thông báo'),
                                content: const Text(
                                    'Hoá đơn đã được tạo thành công'),
                                actions: [
                                  TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        context.pop();
                                        context.go("/");
                                      })
                                ]));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F46A6),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                  ),
                  child: const Text(
                    'Lưu',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

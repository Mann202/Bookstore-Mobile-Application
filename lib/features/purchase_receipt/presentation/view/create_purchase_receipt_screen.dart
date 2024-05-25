import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/app.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/router/app_router.dart';
import 'package:shelfify/features/book/presentation/view/select_book_bottom_sheet.dart';
import 'package:shelfify/features/book/presentation/view/select_customer_bottom_sheet.screen.dart';
import 'package:shelfify/features/book/presentation/view/selected_customer_provider.dart';
import 'package:shelfify/features/purchase_receipt/presentation/providers/purchase_receipt_provider.dart';

class CreatePurchaseReceiptScreen extends ConsumerWidget {
  CreatePurchaseReceiptScreen({super.key});
  final TextEditingController tienThuController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCustomer = ref.watch(selectedCustomerStatedProvider);


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
          onPressed: () {

            context.pop();
          },
        ),
        title: const Text(
          'Tạo phiếu thu tiền',
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
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue.shade100),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildInfoColumn('Mã phiếu thu', 'PT0010'),
                        buildInfoColumn('Ngày thu', "25-05-2024"),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Thông tin khách hàng',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              onTap: () {
                showModalBottomSheet(
                  constraints: const BoxConstraints.expand(),
                  context: context,
                  builder: (context) {
                    return const SelectCustomerBottomSheet();
                  });
              },
              keyboardType: TextInputType.text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintText: 'TenKhachHang',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 172, 172, 172),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                suffixIcon: Icon(Icons.search, size: 30, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            buildInfoText('Địa chỉ', selectedCustomer.address),
            buildInfoText('Điện thoại', selectedCustomer.phoneNumber),
            buildInfoText('Email', selectedCustomer.email),
            buildColoredInfoText('Công nợ cũ', selectedCustomer.outstandingAmount.toString(), Colors.red),
            buildInfoText("Số tiền thu", ""),
             TextField(
              controller: tienThuController,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintText: 'Nhập số tiền thu',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 172, 172, 172),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(soTienThuStatedProvider.notifier).state = tienThuController.text;
                    context.go("/printReceiptScreen");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(180, 45),
                    backgroundColor: const Color.fromRGBO(31, 70, 166, 1),
                  ),
                  child: const Text(
                    'Lưu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
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

  Widget buildInfoText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget buildColoredInfoText(String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: color),
          ),
        ],
      ),
    );
  }
}

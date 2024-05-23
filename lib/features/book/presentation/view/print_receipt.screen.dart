import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';

class PrintReceiptScreen extends StatelessWidget {
  const PrintReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          'In phiếu thu tiền',
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
                        buildInfoColumn('Mã phiếu thu', 'PT0001'),
                        buildInfoColumn('Ngày thu', '15-05-2023', true),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            buildInfoRow('Họ tên khách hàng', 'TenKhachHang', isBold: true),
            buildInfoRow('Địa chỉ', 'DiaChi', isOptional: true),
            buildInfoRow('Điện thoại', 'SoDienThoai', isOptional: true),
            buildInfoRow('Email', 'Email', isOptional: true),
            buildInfoRow('Công nợ cũ', 'SoTienNo VND',
                color: Colors.red, isBold: true),
            buildInfoRow('Số tiền thu', 'SoTienThu VND',
                color: Colors.green, isBold: true),
            buildInfoRow('Còn lại', 'ConLai VND', isBold: true),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fixedSize: const Size(180, 50),
                  backgroundColor: const Color.fromRGBO(31, 70, 166, 1),
                ),
                child: const Text(
                  'In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoColumn(String label, String value,
      [bool isEditable = false]) {
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
            if (isEditable)
              const Icon(
                Icons.edit,
                size: 16,
                color: Colors.blue,
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

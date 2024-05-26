import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';

class CreateReceiptScreen extends StatelessWidget {
  const CreateReceiptScreen({super.key});

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
          'Tạo phiếu thu tiền',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
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
            const Text(
              'Thông tin khách hàng',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
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
            buildInfoText('Địa chỉ', 'DiaChi'),
            buildInfoText('Điện thoại', 'SoDienThoai'),
            buildInfoText('Email', 'Email'),
            buildColoredInfoText('Công nợ cũ', 'SoTienNo VND', Colors.red),
            buildInfoText("Số tiền thu", ""),
            const TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
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
                  onPressed: () {},
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
            style: TextStyle(fontSize: 16, color: Colors.grey),
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

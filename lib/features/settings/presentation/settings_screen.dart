import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          'Cài đặt',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextFieldSection(
                'Số lượng nhập tối thiểu', '150', TextInputType.number),
            buildTextFieldSection(
                'Số lượng tồn kho tối đa', '300', TextInputType.number),
            buildTextFieldSection(
                'Số lượng tồn tối thiểu sau bán', '20', TextInputType.number),
            buildTextFieldSection(
                'Tỉ lệ tính đơn giá bán', '105%', TextInputType.number),
            buildTextFieldSection(
                'Số tiền nợ tối đa', '1.000.000 VND', TextInputType.number),
            const Text(
              'Kiểm tra quy định',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Áp dụng quy định kiểm tra số tiền thu',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(122, 38),
                    backgroundColor: const Color.fromRGBO(31, 70, 166, 1),
                  ),
                  child: const Text(
                    'Lưu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}

Widget buildTextFieldSection(
    String labelText, String hintText, TextInputType inputType) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        keyboardType: inputType,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 172, 172, 172),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

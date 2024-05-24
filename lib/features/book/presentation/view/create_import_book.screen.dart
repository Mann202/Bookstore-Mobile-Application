import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';

class CreateImportBookScreen extends StatelessWidget {
  const CreateImportBookScreen({super.key});

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
          'Tạo phiếu nhập sách',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
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
                    hintText: 'Tìm kiếm đầu sách',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 172, 172, 172),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    suffixIcon:
                        Icon(Icons.search, size: 30, color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

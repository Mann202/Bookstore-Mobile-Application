import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shelfify/bottom_nav.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';

class AccountsSreen extends StatelessWidget {
  const AccountsSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
          onPressed: () {

          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Tài khoản',
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextFieldSection('Tên đăng nhập', 'TenDangNhap', TextInputType.text),
            buildTextFieldSection('Nhóm người dùng', 'TenNhom', TextInputType.text),
          
            const SizedBox(height: 20.0),

            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {

                }, 
                style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fixedSize: const  Size(122, 38),
                        backgroundColor: const Color.fromRGBO(104, 128, 246, 1),
                      ),
                child: const Text(
                  'Đăng xuất',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(currentIndex: 2,),
    );
  }
}

Widget buildTextFieldSection(String labelText, String hintText, TextInputType inputType) {
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
        readOnly: true,
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
            color:  Color.fromARGB(255, 172, 172, 172),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}
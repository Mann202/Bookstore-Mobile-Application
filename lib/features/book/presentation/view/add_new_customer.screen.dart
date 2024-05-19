import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

class AddNewCustomer extends StatelessWidget {
  AddNewCustomer({super.key});
  final TextEditingController tenKhachHangController = TextEditingController();
  final TextEditingController diaChiController = TextEditingController();
  final TextEditingController soDienThoaiController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Thêm khách hàng',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(0xFF4758A8)),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF4758A8),
            size: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tên khách hàng",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildTextField(tenKhachHangController, "Tên khách hàng"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Địa chỉ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildTextField(diaChiController, "Địa chỉ"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildTextField(emailController, "Email"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Số điện thoại",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildTextField(soDienThoaiController, "Số điện thoại"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.end, 
                children: [
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF1F46A6), 
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), 
                      ),
                    ),
                    child: const Text("Lưu", style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white, 
                      )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText) {
    return TextField(
      controller: controller,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontFamily: AppTextStyles.fontFamily,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey[600],
          fontSize: 20.0,
          fontFamily: AppTextStyles.fontFamily,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 0.5,
          ),
        ),
      ),
    );
  }
}

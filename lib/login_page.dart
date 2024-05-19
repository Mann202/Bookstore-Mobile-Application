import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              const Text(
                'SHELFIFY',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Color(0xFF4758A8), fontFamily: AppTextStyles.fontFamily),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Tên đăng nhập',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20.0, fontFamily: AppTextStyles.fontFamily),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Mật khẩu',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20.0, fontFamily: AppTextStyles.fontFamily),
                  prefixIconColor: Colors.black,
                  suffixIconColor: Colors.black,
                  suffixIcon: Icon(Icons.visibility),
                  filled: true, 
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                      
                  },
                  child: const Text('Quên mật khẩu', style: TextStyle(fontSize: 20.0),),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4758A8),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white, fontFamily: AppTextStyles.fontFamily),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

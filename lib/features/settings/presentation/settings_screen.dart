import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Cài đặt',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
            
          ),
        ),
        
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                Text(
                'Số lượng nhập tối thiểu',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '150sdshvsdbvds',
                style: TextStyle(
                  color: Color(979797),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              )
              ),
              
            ],
          ),
          )
        ),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cai dat',
          style: AppTextStyles.h1,
        ),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            width: 330,
            height: 70,
            child: Center(
              child: Text(
                'So luong nhap toi thieu',
                style: AppTextStyles.s2,
              ),
            ),
          )
        ]),
      ),
    );
  }
}

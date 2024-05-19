import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';

class FindBookScreen extends StatelessWidget {
  const FindBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
            size: 32,
          ),
          onPressed: () {

          },
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Tìm kiếm sách',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: AppColors.primary,
              size: 32,
            ),
            onPressed: () {

            },
          ),
        ] 
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 240, 242, 250), 
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  const Icon(Icons.search), 
                  const Text(
                    'Nhập mã hoặc tên sách',
                    style: TextStyle(
                      color: Color.fromARGB(255,141, 142, 143)
                    )
                  ), 
                  ElevatedButton(
                    onPressed: () {

                    }, 
                    child: Icon(Icons.cancel)
                  )
                ],
              ),
                              
                
            ),
              
      
            const SizedBox(height: 20.0),
            const Text(
              'Danh sách sách',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
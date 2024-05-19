import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

class AddNewBookScreen extends ConsumerWidget {
  const AddNewBookScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Thêm sách', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xFF4758A8)),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF4758A8), size: 35,),
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
                "Tên sách",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              _buildTextField(),
              const SizedBox(height: 20),
              const Text(
                "Tác Giả",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              _buildDropDown(context, "Chọn tác giả"),
              const SizedBox(height: 10),
              const Text(
                "Thể Loại",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              _buildDropDown(context, "Chọn thể loại"),
              const SizedBox(height: 30),
              
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4758A8),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Lưu',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white, fontFamily: AppTextStyles.fontFamily),
                    ),
                  ),)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return TextField(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontFamily: AppTextStyles.fontFamily,
      ),
      decoration: InputDecoration(
        hintText: 'Tên sách',
        hintStyle: const TextStyle(
          color: Colors.black,
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

  Widget _buildDropDown(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        _showDropDown(context);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }

  void _showDropDown(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: 200,
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  'Tác giả 1',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'Tác giả 2',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

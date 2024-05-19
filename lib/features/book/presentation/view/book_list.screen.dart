import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookSearchScreenState createState() => _BookSearchScreenState();
}

class _BookSearchScreenState extends State<BookListScreen> {
  
  final List<Map<String, String>> books = [
    {'TenDauSach': 'Sách A', 'TenTacGia': 'Tác giả A', 'TheLoai': 'Tiểu thuyết', 'SoLuongTon': '10'},
    {'TenDauSach': 'Sách B', 'TenTacGia': 'Tác giả B', 'TheLoai': 'Khoa học', 'SoLuongTon': '5'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, 
        title: TextField(
              decoration: InputDecoration(
                hintText: 'Nhập mã hoặc tên sách',
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: const Color(0xFF4758A8),
                hintStyle: const TextStyle(color: Colors.black, fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF4758A8), size: 35,),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Text( // Loại bỏ Align không cần thiết
              'Danh sách Sách',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded( 
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bo tròn góc 8dp
                  ),
                  child:  ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  tileColor: Colors.grey[200],
                  title: Text(books[index]['TenDauSach']!, style: const TextStyle(color: Colors.black, fontSize: 25, fontFamily: AppTextStyles.fontFamily, fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(books[index]['TenTacGia']!,style: const TextStyle(color: Colors.black, fontSize: 20, fontFamily: AppTextStyles.fontFamily)),
                      Text('Thể loại: ${books[index]['TheLoai']}', style: const TextStyle(color: Colors.black, fontSize: 18, fontFamily: AppTextStyles.fontFamily)),
                    ],
                  ),
                  trailing: Text('Tồn kho: ${books[index]['SoLuongTon']}', style: const TextStyle(color: Colors.black, fontSize: 15, fontFamily: AppTextStyles.fontFamily)),
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

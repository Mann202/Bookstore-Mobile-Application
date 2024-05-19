import 'package:flutter/material.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';

class BookDetailScreen extends StatelessWidget {
  BookDetailScreen({super.key, required this.book});

  Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Chi tiết sách',
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
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildDetailRow('Tên sách', book.getTitle()),
          _buildDetailRow('Tác giả', book.getAuthor()),
          _buildDetailRow('Thể loại', book.getCategory()),
          _buildDetailRow('Nhà xuất bản', book.publisher),
          _buildDetailRow('Năm xuất bản', book.publicationYear.toString()),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 20,
          ),
          _buildDetailRow('Số lượng tồn', book.quantityInStock.toString()),
          _buildDetailRow('Đơn giá nhập', '${book.purchasePrice.toInt()} VND'),
          _buildDetailRow('Đơn giá bán', '${book.sellingPrice.toInt()} VND'),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          Text(
            value,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

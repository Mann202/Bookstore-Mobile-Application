import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
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
          _buildDetailRow(label: 'Tên sách', value: book.getTitle()),
          _buildDetailRow(label: 'Tác giả', value: book.getAuthor()),
          _buildDetailRow(label: 'Thể loại', value: book.getCategory()),
          _buildDetailRow(label: 'Nhà xuất bản', value: book.publisher),
          _buildDetailRow(
              label: 'Năm xuất bản', value: book.publicationYear.toString()),
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
          _buildDetailRow(
              label: 'Số lượng tồn',
              value: book.quantityInStock.toString(),
              textColor: AppColors.primary),
          _buildDetailRow(
              label: 'Đơn giá nhập',
              value: '${book.purchasePrice.toInt()} VND',
              textColor: AppColors.error),
          _buildDetailRow(
              label: 'Đơn giá bán',
              value: '${book.sellingPrice.toInt()} VND',
              textColor: AppColors.success),
        ],
      ),
    );
  }

  Widget _buildDetailRow(
      {required String label,
      required String value,
      Color? textColor = Colors.black}) {
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
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:shelfify/features/book/presentation/view/book_detail.screen.dart';

class BookInfoWidget extends StatelessWidget {
  BookInfoWidget({
    super.key,
    required this.book,
  });

  final Book book;
  @override
  Widget build(BuildContext context) {
    return Card(
        color:Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Bo tròn góc 8dp
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          tileColor: Colors.grey[200],
          title: Text(
            book.getTitle(),
            style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: AppTextStyles.fontFamily,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(book.getAuthor(),
                  style: TextStyle(
                      color: AppColors.black50,
                      fontSize: 20,
                      fontFamily: AppTextStyles.fontFamily)),
              Text('Thể loại: ${book.getCategory()}',
                  style: TextStyle(
                      color: AppColors.black50,
                      fontSize: 18,
                      fontFamily: AppTextStyles.fontFamily)),
            ],
          ),
          trailing: Text('Tồn kho: ${book.quantityInStock}',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: AppTextStyles.fontFamily)),
        ));
  }
}

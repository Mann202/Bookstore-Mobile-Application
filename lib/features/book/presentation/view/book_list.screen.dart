import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:shelfify/features/book/presentation/providers/book_list_provider.dart';

class BookListScreen extends ConsumerWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookListState = ref.watch(bookListStateNotifierProvider);
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
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF4758A8),
            size: 35,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: bookListState.maybeWhen(
        success: (books) {
          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bo tròn góc 8dp
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    tileColor: Colors.grey[200],
                    title: Text(
                      books[index].publisher,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: AppTextStyles.fontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(books[index].getCategory(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: AppTextStyles.fontFamily)),
                        Text('Thể loại: ${books[index]}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: AppTextStyles.fontFamily)),
                      ],
                    ),
                    trailing: Text('Tồn kho: ${books[index].quantityInStock}',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: AppTextStyles.fontFamily)),
                  ));
            },
          );
        },
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

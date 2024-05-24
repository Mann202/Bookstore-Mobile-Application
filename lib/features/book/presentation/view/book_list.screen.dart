import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:shelfify/features/book/presentation/providers/book_list_provider.dart';
import 'package:shelfify/features/book/presentation/view/book_detail.screen.dart';
import 'package:shelfify/features/book/presentation/view/book_info_widget.dart';

class BookListScreen extends ConsumerWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookListStateNotifier = bookListStateNotifierProvider;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Danh sách Sách",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xFF4758A8))),
        // title: TextField(
        //   decoration: InputDecoration(
        //     hintText: 'Nhập mã hoặc tên sách',
        //     prefixIcon: const Icon(Icons.search),
        //     prefixIconColor: const Color(0xFF4758A8),
        //     hintStyle: const TextStyle(color: Colors.black, fontSize: 20),
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(100.0),
        //       borderSide: BorderSide.none,
        //     ),
        //     filled: true,
        //     fillColor: Colors.grey[200],
        //   ),
        // ),
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
      body: ref.watch(bookListStateNotifier).maybeWhen(
            success: (books) {
              return ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return BookDetailScreen(book: books[index]);
                        },
                      );
                    },
                    child: BookInfoWidget(
                      book: books[index],
                    ),
                  );
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

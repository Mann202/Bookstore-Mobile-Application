import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/features/book/presentation/providers/book_list_provider.dart';

class BookListScreen extends ConsumerWidget {
  BookListScreen({super.key});

  final bookListProvider = bookListStateNotifierProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 32,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: ref.watch(bookListProvider).maybeWhen(
            success: (books) {
              return ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return ListTile(
                    title: Text(book.id.toString()),
                    subtitle: Text(book.publisher),
                  );
                },
              );
            },
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    ));
  }
}

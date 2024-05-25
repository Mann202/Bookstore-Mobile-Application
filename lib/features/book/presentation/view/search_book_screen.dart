import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_sizes.dart';
import 'package:shelfify/features/book/presentation/providers/book_list_provider.dart';
import 'package:shelfify/features/book/presentation/view/book_detail.screen.dart';
import 'package:shelfify/features/book/presentation/view/book_info_widget.dart';

class SearchBookScreen extends ConsumerWidget {
  const SearchBookScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookListStateNotifier = bookListStateNotifierProvider;

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
              context.pop();
            },
          ),
          titleSpacing: 6,
          title: Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: SearchBar(
              leading: const Icon(
                Icons.search,
                color: AppColors.white,
                size: 32,
              ),
              hintText: 'Tìm kiếm sách',
              onSubmitted: (query) => ref
                  .read(bookListStateNotifierProvider.notifier)
                  .searchBook(query),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ref.watch(bookListStateNotifier).maybeWhen(
              success: (books) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
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
                      ),
                    )
                  ],
                );
              },
              orElse: () => const Center(child: CircularProgressIndicator()),
            ));
  }
}

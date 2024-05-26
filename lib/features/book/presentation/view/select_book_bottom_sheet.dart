import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_sizes.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/models/models.extension.dart';
import 'package:shelfify/features/book/presentation/providers/book_list_provider.dart';
import 'package:shelfify/features/book/presentation/providers/selected_books_provider.dart';
import 'package:shelfify/features/invoice/presentation/view/general_information.dart';

final selectedBookStateProvider =
    StateProvider<List<Book>>((ref) => []);

class SelectBookBottomSheet extends ConsumerWidget {
  const SelectBookBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookListState = ref.watch(bookListStateNotifierProvider);
    var selectedBook = ref.watch(selectedBookStateProvider);

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
      body: bookListState.maybeWhen(
        success: (books) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];

                    return InkWell(
                      onTap: () {
                        if (selectedBook.contains(book)) {
                          selectedBook =
                              selectedBook.where((e) => e != book).toList();
                        } else {
                          selectedBook = [...selectedBook, book];
                        }
                        ref.read(selectedBookStateProvider.notifier).state =
                            selectedBook;
                        ref.read(selectedDetailsProvider.notifier).state =
                            selectedBook
                                .map((book) => InvoiceDetail(
                                      unitPrice: book.sellingPrice,
                                      quantity: 0,
                                      totalPrice: 0,
                                      book: book,
                                    ))
                                .toList();
                      },
                      child: Card(
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          tileColor: ref
                                  .watch(selectedBookStateProvider)
                                  .contains(book)
                              ? AppColors.primary
                              : AppColors.black20,
                          title: Text(
                            book.getTitle(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: AppTextStyles.fontFamily,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.getAuthor(),
                                style: TextStyle(
                                    color: AppColors.black50,
                                    fontSize: 20,
                                    fontFamily: AppTextStyles.fontFamily),
                              ),
                              Text(
                                'Thể loại: ${book.getCategory()}',
                                style: TextStyle(
                                    color: AppColors.black50,
                                    fontSize: 18,
                                    fontFamily: AppTextStyles.fontFamily),
                              ),
                            ],
                          ),
                          trailing: Column(
                            children: [
                              Text(
                                '${NumberFormat('#.###').format(book.sellingPrice)} VND',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: AppTextStyles.fontFamily),
                              ),
                              Text(
                                'Tồn kho: ${book.quantityInStock}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: AppTextStyles.fontFamily),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          );
        },
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

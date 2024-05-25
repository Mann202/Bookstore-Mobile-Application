import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/features/book/presentation/providers/book_list_provider.dart';
import 'package:shelfify/features/book/presentation/providers/selected_books_provider.dart';
import 'package:shelfify/features/book/presentation/view/selected_customer_provider.dart';
import 'package:shelfify/features/customer/presentation/provider/customer_provider.dart';

class SelectCustomerBottomSheet extends ConsumerWidget {
  const SelectCustomerBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerListStateNotifier = customerStateNotifierProvider;
    final selectedCustomer = ref.watch(selectedCustomerStatedProvider);

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
              hintText: 'Tìm kiếm khách hàng',
              onSubmitted: (query) => ref
                  .read(bookListStateNotifierProvider.notifier)
                  .searchBook(query),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ref.watch(customerListStateNotifier).maybeWhen(
              success: (customers) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: customers.length,
                        itemBuilder: (context, index) {
                          final customer = customers[index];
                          return InkWell(onTap: () {
                            
                          }, child: Consumer(
                            builder: (BuildContext context, WidgetRef ref,
                                Widget? child) {
                              final selectedBook =
                                  ref.watch(selectedBookStateProvider);
                              final isSelected = selectedBook.contains(customer);
                              return Card(
                                  color: Colors.white,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.all(16),
                                    tileColor: (isSelected
                                        ? AppColors.primary
                                        : Colors.grey[200]),
                                    title: Text(
                                      customer.customerName,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontFamily: AppTextStyles.fontFamily,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(customer.address,
                                            style: TextStyle(
                                                color: AppColors.black50,
                                                fontSize: 20,
                                                fontFamily:
                                                    AppTextStyles.fontFamily)),
                                        Text('Mobile: ${customer.phoneNumber}',
                                            style: TextStyle(
                                                color: AppColors.black50,
                                                fontSize: 18,
                                                fontFamily:
                                                    AppTextStyles.fontFamily)),
                                      ],
                                    ),
                                    trailing: Text(
                                        'Email: ${customer.email}',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily:
                                                AppTextStyles.fontFamily)),
                                  ));
                            },
                          ));
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

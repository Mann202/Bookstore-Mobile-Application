import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/features/customer/presentation/provider/customer_provider.dart';

class ListCustomerScreen extends ConsumerWidget {
  const ListCustomerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerState =
        ref.watch(customerStateNotifierProvider); //KhachHangProvider

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Danh sách khách hàng',
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
            context.pop();
          },
        ),
      ),
      body: customerState.maybeWhen(
        success: (customers) {
          return ListView.builder(
            itemCount: customers.length,
            itemBuilder: (context, index) {
              return Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    tileColor: Colors.grey[200],
                    title: Text(
                      customers[index].customerName, //Tên khách hàng
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: AppTextStyles.fontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(customers[index].phoneNumber, //Số điện thoại
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: AppTextStyles.fontFamily)),
                        Text('Email: ${customers[index].email}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: AppTextStyles.fontFamily)),
                      ],
                    ),
                    trailing: Text(
                        'Số tiền nợ: ${customers[index].outstandingAmount}',
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

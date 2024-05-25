import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/core/services/local_storage/local_store.provider.dart';
import 'package:shelfify/features/book/presentation/view/select_book_bottom_sheet.dart';
import 'package:shelfify/features/book/presentation/view/select_customer_bottom_sheet.screen.dart';
import 'package:shelfify/features/book/presentation/view/selected_customer_provider.dart';
import 'package:shelfify/features/invoice/presentation/view/create_invoice_screen.dart';

import '../../../invoice/presentation/view/general_information.dart';

class PhieuNhapSach extends ConsumerWidget {
  const PhieuNhapSach({super.key});

  String getTotal(List<InvoiceDetail> details) {
    if (details.isEmpty) return '0';

    return details
        .map((detail) => detail.totalPrice)
        .reduce((a, b) => a + b)
        .toString();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(selectedBookStateProvider);
    final invoiceDetails = ref.watch(selectedDetailsProvider);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Phiếu Nhập Sách'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mã phiếu nhập",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20)),
                        SizedBox(height: 5),
                        Text(
                          "PN001",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Ngày lập",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        const SizedBox(height: 5),
                        Text(
                          CreateInvoiceScreen.getTodayFormat(),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onTap: () {
                  showModalBottomSheet(
                    constraints: const BoxConstraints.expand(),
                    context: context,
                    builder: (context) {
                      return const SelectBookBottomSheet();
                    },
                  );
                },
                style: const TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Danh Sách Sản Phẩm',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0xffA7A7A8),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey[400]!,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey[400]!,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              DataTable(
                columnSpacing: 10,
                dataRowHeight: 80,
                columns: [
                  DataColumn(
                      label: Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'Sách',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 20),
                    ),
                  )),
                  DataColumn(
                      label: Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'SL',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                    ),
                  )),
                  DataColumn(
                      label: Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'ĐG Nhập',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                    ),
                  )),
                  DataColumn(
                      label: Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'Thành tiền',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                    ),
                  )),
                ],
                rows: books.map((book) {
                  int index = books.indexOf(book);
                  return DataRow(cells: [
                    DataCell(
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            book.title.bookTitle,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            book.author.authorName,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      TextField(
                        style: AppTextStyles.s2,
                        keyboardType: TextInputType.number,
                        onSubmitted: (value) async {
                          final soLuongNhapToiThieu = await ref
                              .watch(localStoreProvider)
                              .getString("soLuongNhapToiThieu");
                          if (int.parse(value) <
                              int.parse(soLuongNhapToiThieu!)) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Cảnh báo số lượng nhập"),
                                  content: const Text(
                                      "Số lượng sản phẩm nhập không dưới số lượng tối thiểu đã cài đặt."),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); 
                                      },
                                      child: const Text("Đóng"),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          ref.read(selectedDetailsProvider.notifier).state = ref
                              .read(selectedDetailsProvider.notifier)
                              .state
                              .map((detail) {
                            if (detail.book.id ==
                                invoiceDetails[index].book.id) {
                              return detail.copyWith(
                                quantity: int.parse(value),
                                totalPrice: int.parse(value) * detail.unitPrice,
                              );
                            }
                            return detail;
                          }).toList();
                        },
                        decoration: const InputDecoration(
                          hintText: 'Nhập số lượng',
                        ),
                      ),
                    ),
                    DataCell(
                      TextField(
                        style: AppTextStyles.s2,
                        keyboardType: TextInputType.number,
                        onSubmitted: (value) {
                          ref.read(selectedDetailsProvider.notifier).state = ref
                              .read(selectedDetailsProvider.notifier)
                              .state
                              .map((detail) {
                            if (detail.book.id ==
                                invoiceDetails[index].book.id) {
                              return detail.copyWith(
                                unitPrice: double.parse(value),
                                totalPrice:
                                    double.parse(value) * detail.quantity,
                              );
                            }
                            return detail;
                          }).toList();
                        },
                        decoration: const InputDecoration(
                          hintText: 'Nhập đơn giá nhập',
                        ),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: Text(
                          (invoiceDetails[index].totalPrice).toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ]);
                }).toList(),
              ),
            ],
          )),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Container(
          color: const Color(0xFFE5ECFF),
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tổng tiền: ${getTotal(invoiceDetails)}',
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              title: const Text('Thông báo'),
                              content: const Text(
                                  'Phiếu nhập sách đã được tạo thành công'),
                              actions: [
                                TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      context.pop();
                                      context.go("/");
                                    })
                              ]));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F46A6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                ),
                child: const Text(
                  'Lưu',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

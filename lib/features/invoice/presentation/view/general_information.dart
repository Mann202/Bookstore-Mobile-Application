import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/core/models/models.dart';
import 'package:shelfify/features/book/presentation/view/select_book_bottom_sheet.dart';
import 'package:shelfify/features/invoice/presentation/view/create_invoice_screen.dart';

final selectedDetailsProvider = StateProvider.autoDispose<List<InvoiceDetail>>((ref) => []);

class GeneralInformation extends ConsumerWidget {
  const GeneralInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(selectedBookStateProvider);
    final invoiceDetails = ref.watch(selectedDetailsProvider);

    return SingleChildScrollView(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Mã hóa đơn",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20)),
                    const SizedBox(height: 5),
                    Text(
                      CreateInvoiceScreen.getNewInvoiceId(ref),
                      style: const TextStyle(color: Colors.black, fontSize: 18),
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
                      style: const TextStyle(color: Colors.black, fontSize: 18),
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
                  'ĐG Bán',
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
                    onSubmitted: (value) {
                      ref.read(selectedDetailsProvider.notifier).state = ref
                          .read(selectedDetailsProvider.notifier)
                          .state
                          .map((detail) {
                        if (detail.book.id == invoiceDetails[index].book.id) {
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
                  Text(
                    (invoiceDetails[index].unitPrice).toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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
      ),
    );
  }
}

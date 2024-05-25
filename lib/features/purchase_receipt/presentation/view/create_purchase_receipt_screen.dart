import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/features/book/presentation/providers/book_list_provider.dart';

class CreatePurchaseReceiptScreen extends ConsumerWidget {
  final List<Map<String, dynamic>> sanPham = [
    {
      'TenDauSach': 'Nhà Giả Kim',
      'TenTheLoai': 'Tiểu thuyết',
      'SoLuong': 3,
      'DonGiaBan': 120000,
    },
    {
      'TenDauSach': 'Sapiens: Lịch sử loài người',
      'TenTheLoai': 'Lịch sử',
      'SoLuong': 2,
      'DonGiaBan': 180000,
    },
    {
      'TenDauSach': 'Đắc Nhân Tâm',
      'TenTheLoai': 'Kỹ năng',
      'SoLuong': 1,
      'DonGiaBan': 80000,
    },
    {
      'TenDauSach': 'Harry Potter và chiếc cốc lửa',
      'TenTheLoai': 'Giả tưởng',
      'SoLuong': 4,
      'DonGiaBan': 95000,
    },
  ];

  final List<Map<String, dynamic>> invoice = [
    {
      'MaHoaDon': 'HD001',
      'NgayLap': '25/05/2024',
    },
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Tạo danh sách các controller cho từng ô trong bảng
    final List<TextEditingController> soluongControllers = [];
    final List<TextEditingController> dongGiaControllers = [];



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Tạo phiếu nhập sách",
          style: TextStyle(color: Color(0xFF5265C2), fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
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
                      const Text(
                        "Mã hóa đơn",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        invoice[0]['MaHoaDon'],
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ngày lập",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        invoice[0]['NgayLap'],
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Danh sách sản phẩm",
              style: TextStyle(
                color: Colors.black,
                fontFamily: AppTextStyles.fontFamily,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            DataTable(
              columnSpacing: 8,
              dataRowHeight: 100,
              columns: [
                DataColumn(
                  label: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'Sách',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 20),
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'SL',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'ĐG Bán',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2E5F6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'Thành tiền',
                      style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                    ),
                  ),
                ),
              ],
              rows: List<DataRow>.generate(sanPham.length, (index) {
                final sp = sanPham[index];
                final soluongController = soluongControllers[index];
                final dongGiaController = dongGiaControllers[index];

                return DataRow(
                  cells: [
                    DataCell(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sp['TenDauSach'].length > 15
                                ? '${sp['TenDauSach'].substring(0, 15)}...'
                                : sp['TenDauSach'],
                            style: const TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            sp['TenTheLoai'],
                            style: const TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      TextField(
                        controller: soluongController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'SL',
                        ),
                      ),
                    ),
                    DataCell(
                      TextField(
                        controller: dongGiaController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'DG',
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        ((int.tryParse(soluongController.text) ?? 0) *
                                (int.tryParse(dongGiaController.text) ?? 0))
                            .toString(),
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Container(
          color: const Color(0xFFE5ECFF),
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tổng tiền: ${_tinhTongTien(sanPham, soluongControllers, dongGiaControllers)}',
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  // Thực hiện hành động lưu
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F46A6),
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                ),
                child: const Text(
                  'Lưu',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _tinhTongTien(List<Map<String, dynamic>> sanPham, List<TextEditingController> soluongControllers, List<TextEditingController> dongGiaControllers) {
    double tong = 0;
    for (var i = 0; i < sanPham.length; i++) {
      final soLuong = int.tryParse(soluongControllers[i].text) ?? sanPham[i]['SoLuong'];
      final donGia = int.tryParse(dongGiaControllers[i].text) ?? sanPham[i]['DonGiaBan'];
      tong += soLuong * donGia;
    }
    return tong;
  }
}

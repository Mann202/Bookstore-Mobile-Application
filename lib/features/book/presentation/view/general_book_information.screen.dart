import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

Widget ThongTinChungTab() {
  List<Map<String, dynamic>> _sanPham = [
    {
      'TenDauSach': 'Sách A',
      'TenTheLoai': 'Tiểu thuyết',
      'SoLuong': 2,
      'DonGiaBan': 150000,
      'ThanhTien': 300000
    },
    {
      'TenDauSach': 'Sách B',
      'TenTheLoai': 'Khoa học',
      'SoLuong': 1,
      'DonGiaBan': 200000,
      'ThanhTien': 200000
    },
  ];

  List<Map<String, dynamic>> _invoice = [
    {'MaHoaDon': 'HD0001', 'NgayLap': '15-05-2023'}
  ];

  return SingleChildScrollView(
    padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
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
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  const SizedBox(height: 5),
                  Text(
                    _invoice[0]['MaHoaDon'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
                    _invoice[0]['NgayLap'],
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
        const Text(
          "Danh sách sản phẩm",
          style: TextStyle(
              color: Colors.black,
              fontFamily: AppTextStyles.fontFamily,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columnSpacing: 5,
            columns: [
              DataColumn(
                  label: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E5F6),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Sách',
                  style: TextStyle(color: Color(0xFF5265C2), fontSize: 20),
                ),
              )),
              DataColumn(
                  label: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E5F6),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Số Lượng',
                  style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                ),
              )),
              DataColumn(
                  label: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E5F6),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Đơn Giá Bán',
                  style: TextStyle(color: Color(0xFF5265C2), fontSize: 17),
                ),
              )),
              DataColumn(
                  label: Container(
                    width: 120,
                padding: const EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.center,
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
            rows: _sanPham.map((sp) {
              return DataRow(cells: [
                DataCell(
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(sp['TenDauSach'],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20)),
                      Text(sp['TenTheLoai'],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 13)),
                    ],
                  ),
                ),
                DataCell(
                  Center(
                      child: Text(sp['SoLuong'].toString(),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20))),
                ),
                DataCell(
                  Center(
                    child: Text(sp['DonGiaBan'].toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 20))),
                ),
                DataCell(
                  Center(
                    child: Text((sp['SoLuong'] * sp['DonGiaBan']).toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 20))),
                ),
                  
              ]);
            }).toList(),
          ),
        )
      ],
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HoaDonBanSachScreen(),
    );
  }
}

class HoaDonBanSachScreen extends StatefulWidget {
  const HoaDonBanSachScreen({super.key});

  @override
  _HoaDonBanSachScreenState createState() => _HoaDonBanSachScreenState();
}

class _HoaDonBanSachScreenState extends State<HoaDonBanSachScreen> {
  List<Map<String, dynamic>> _sanPham = [];
  final _formKey = GlobalKey<FormState>(); // Key cho Form khách hàng
  final _tenKhachHangController = TextEditingController();
  final _diaChiController = TextEditingController();
  final _soDienThoaiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Tạo hoá đơn bán sách',
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
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Thông tin chung",
                  style: TextStyle(
                    fontFamily: AppTextStyles.fontFamily,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Khách hàng",
                  style: TextStyle(
                    fontFamily: AppTextStyles.fontFamily,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Color(0xFFDBFFE4),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildThongTinChungTab(),
            _buildKhachHangTab(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tổng tiền: ${_tinhTongTien()}'),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: const Text('Lưu'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThongTinChungTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Danh sách sản phẩm",
            style: TextStyle(
                color: Colors.black,
                fontFamily: AppTextStyles.fontFamily,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          DataTable(
            columnSpacing: 20,
            columns: [
              DataColumn(
                  label: Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10,),
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
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10,),
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
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10,),
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
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10,),
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
                DataCell(Text(sp['ten'],
                    style: const TextStyle(color: Colors.black))),
                DataCell(Text(sp['soLuong'].toString(),
                    style: const TextStyle(color: Colors.black))),
                DataCell(Text(sp['donGia'].toString(),
                    style: const TextStyle(color: Colors.black))),
                DataCell(Text((sp['soLuong'] * sp['donGia']).toString(),
                    style: const TextStyle(color: Colors.black))),
              ]);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildKhachHangTab() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _tenKhachHangController,
              decoration: const InputDecoration(labelText: 'Tên khách hàng'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Vui lòng nhập tên khách hàng';
                }
                return null;
              },
            ),
            // ... (Các TextFormField khác cho địa chỉ, số điện thoại)
          ],
        ),
      ),
    );
  }

  double _tinhTongTien() {
    double tong = 0;
    for (var sp in _sanPham) {
      tong += sp['soLuong'] * sp['donGia'];
    }
    return tong;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';
import 'package:shelfify/features/book/presentation/view/customer_tab.screen.dart';
import 'package:shelfify/features/book/presentation/view/general_book_information.screen.dart';

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
  final _formKey = GlobalKey<FormState>();
  final _tenKhachHangController = TextEditingController();

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
            ThongTinChungTab(),
            KhachHangTab(_tenKhachHangController, _formKey),
          ],
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
                  'Tổng tiền: ${_tinhTongTien()}',
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F46A6),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                  ),
                  child: const Text('Lưu',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _tinhTongTien() {
    double tong = 0;
    for (var sp in _sanPham) {
      tong += sp['SoLuong'] * sp['DonGiaBan'];
    }
    return tong;
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shelfify/bottom_nav.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Image.asset("assets/logo.png", height: 40),
              actions: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      hintText: "Tra cứu sách",
                      hintStyle: const TextStyle(
                          fontFamily: AppTextStyles.fontFamily,
                          fontSize: 20.0,
                          color: Colors.black),
                      prefixIconColor: const Color(0xFF4758A8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      context.go("/searchBook");
                    },
                    icon: const Icon(
                      size: 40,
                      Icons.search,
                      color: AppColors.primary,
                    ),
                  ),
                )
              ],
            ),
            InkWell(
              child: _buildCategoryItem("Danh sách Sách", Icons.shelves),
              onTap: () => context.go("/bookList"),
            ),
            InkWell(
              child: _buildCategoryItem("Danh sách khách hàng", Icons.people),
              onTap: () => context.go("/listCustomer"),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("DANH MỤC CƠ BẢN",
                  style: TextStyle(
                    color: Color(0xFF4758A8),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: AppTextStyles.fontFamily,
                  )),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: [
                // Sửa lỗi ở đây
                InkWell(
                  child: _buildFeatureItem("Lập phiếu nhập sách", Icons.store),
                  onTap: () => context.go("/phieuNhapSach"),
                ),
                InkWell(
                  child: _buildFeatureItem(
                      "Lập hoá đơn bán sách", Icons.shopping_cart),
                  onTap: () => context.go("/createInvoice"),
                ),
                InkWell(
                  child: _buildFeatureItem(
                    "Lập phiếu thu tiền", Icons.pause_presentation),
                  onTap: () => context.go("/createPurchaseReceipt"),
                ),
                _buildFeatureItem("Lập báo cáo tháng", Icons.analytics),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(currentIndex: 0,),
    );
  }

  // Hàm xây dựng item cho danh mục
  Widget _buildCategoryItem(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFC7B3CC), Color(0xFF268AB2)]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.white),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFC7B3CC), Color(0xFF268AB2)]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Colors.white),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}

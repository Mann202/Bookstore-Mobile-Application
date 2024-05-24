import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
              actions: [
                Flexible(
                  flex: 1,
                  child: Center(
                    child: Image.asset(
                      "assets/logo.png",
                      height: 40,
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
                      context.go("/bookList");
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
                  child: _buildCategoryItem(
                      context, "Danh sách Sách", Icons.shelves),
                  onTap: () => context.go("/bookList"),
                ),

                _buildCategoryItem(
                    context, "Danh sách khách hàng", Icons.people),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "DANH SÁCH PHẦN MỀM",
                style: TextStyle(
                    color: Color(0xFF4758A8),
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: AppTextStyles.fontFamily),
              ),
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
                _buildFeatureItem("Lập phiếu nhập sách", Icons.store),
                _buildFeatureItem("Lập hoá đơn bán sách", Icons.car_rental),
                _buildFeatureItem(
                    "Lập phiếu thu tiền", Icons.pause_presentation),
                _buildFeatureItem("Lập báo cáo tháng", Icons.analytics),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Hàm xây dựng item cho danh mục
  Widget _buildCategoryItem(BuildContext context, String title, IconData icon) {
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
              fontSize: 14,
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
                  fontSize: 14,
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

import 'package:flutter/material.dart';
import 'package:shelfify/bottom_nav.dart';
import 'package:shelfify/core/constants/styles/app_text_styles.dart';


class CaterogyScreen extends StatefulWidget {
  @override
  _CaterogyScreenState createState() => _CaterogyScreenState();
}

class _CaterogyScreenState extends State<CaterogyScreen>{

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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
                      prefixIcon: const Icon(Icons.search, ),
                      hintText: "Tra cứu sách",
                      hintStyle: const TextStyle(fontFamily: AppTextStyles.fontFamily, fontSize: 20.0, color: Colors.black),
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
                const SizedBox(width: 10),
              ],
            ),
            
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
              "DANH MỤC",
              style: TextStyle(
                color: Color(0xFF4758A8),
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: AppTextStyles.fontFamily,
              )
            ),),

            const SizedBox(height: 10),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: [ 
                _buildCategoryItem("Danh sách sách", Icons.shelves),
                _buildCategoryItem("Danh sách khách hàng", Icons.people),
              ],
            ),

            const SizedBox(height: 10),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(10), 
              children: [
                _buildFeatureItem("Phiếu nhập sách", Icons.book),
                _buildFeatureItem("Danh sách khách hàng", Icons.people),
                _buildFeatureItem("Danh sách phiếu nhập", Icons.store),
                _buildFeatureItem("Danh sách hoá đơn", Icons.car_rental),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(currentIndex: 1,),
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.orange,
            Colors.blue
          ]
        ),
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
          colors: [
            Colors.orange,
            Colors.blue
          ]
        ),
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'DANH MỤC',
          style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          children: const <Widget>[
            MenuButton(
              icon: Icons.menu_book_rounded,
              label: 'Danh sách \nSách',
              path: '/bookList',
            ),
            MenuButton(
              icon: Icons.people_alt_rounded,
              label: 'Danh sách \nKhách hàng',
              path: '/listCustomer',
            ),
            MenuButton(
              icon: Icons.local_print_shop_rounded,
              label: 'Danh sách \nPhiếu nhập',
              path: '',
            ),
            MenuButton(
              icon: Icons.receipt_long,
              label: 'Danh sách \nHóa đơn',
              path: '',
            ),
            MenuButton(
              icon: Icons.cases_rounded,
              label: 'Danh sách \nPhiếu thu',
              path: '',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String path;

  const MenuButton(
      {super.key, required this.icon, required this.label, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 212, 103, 30),
            Color.fromARGB(255, 66, 85, 155)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: InkWell(
        onTap: () {
          context.go(path);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

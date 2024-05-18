import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Danh mục',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Tài khoản'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Cài đặt"
        )
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}

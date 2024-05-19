import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shelfify/bottom_nav.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset("asset/logo.pnj"),
                      const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Tra cứu sách"),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Danh mục cơ bản",
                    style: TextStyle(
                      color: Color(0xFF4758A8),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Color(0xFFC7B3CC),
                              Color(0xFF268AB2)
                            ])),
                        child: const Column(children: [
                          Icon(Icons.shelves),
                          Text("Danh sách phát",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18)),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Color(0xFFC7B3CC),
                              Color(0xFF268AB2)
                            ])),
                        child: const Column(children: [
                          Icon(Icons.people),
                          Text("Danh sách khách hàng",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18)),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "DANH SÁCH PHẦN MỀM",
                    style: TextStyle(
                        color: Color(0xFF4758A8),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  )
                ],
              ))),
    );
  }
}

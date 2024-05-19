import 'package:flutter/material.dart';

Widget KhachHangTab(tenKhachHangController, formKey) {
  List<Map<String, dynamic>> _information = [
    {
      "SoTienNo": 300000,
      "TongTienHoaDon": 100000,
    }
  ];

  return Form(
    key: formKey,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mã hóa đơn",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20)),
                    SizedBox(height: 5),
                    Text(
                      "HD0001",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ngày lập",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(height: 5),
                    Text(
                      "15-05-2023",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Thông tin khách hàng",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: 'TenKhachHang',
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
              filled: true,
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: const Color(0xffA7A7A8),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 10,
          ),
          _buildDetailRow("Công nợ cũ", _information[0]["SoTienNo"].toString()),
          _buildDetailRow("Tổng tiền hoá đơn",
              _information[0]["TongTienHoaDon"].toString()),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Thanh toán",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Nhập số tiền thanh toán',
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey[400]!,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                // Viền khi TextField được focus
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F46A6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                ),
                child: const Text('Thanh toán',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800)),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _buildDetailRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black)),
        Text(
          value,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ],
    ),
  );
}

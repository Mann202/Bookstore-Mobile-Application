import 'package:flutter/material.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';

enum TypeReport { BaoCaoTon, BaoCaoCongNo }

enum Month {
  Thang1,
  Thang2,
  Thang3,
  Thang4,
  Thang5,
  Thang6,
  Thang7,
  Thang8,
  Thang9,
  Thang10,
  Thang11,
  Thang12
}

enum Year { Nam2019, Nam2020, Nam2021, Nam2022, Nam2023, Nam2024, Nam2025 }

class CreateReport extends StatefulWidget {
  const CreateReport({super.key});

  @override
  State<CreateReport> createState() {
    return _CreateReportState();
  }
}

class _CreateReportState extends State<CreateReport> {
  TypeReport _selectedType = TypeReport.BaoCaoTon;
  Month _selectedMonth = Month.Thang1;
  Year _selectedYear = Year.Nam2024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Tạo báo cáo',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDropdownSection(
                'Loại báo cáo', _selectedType, TypeReport.values, getTypeReport,
                (value) {
              setState(() {
                _selectedType = value;
              });
            }),
            _buildDropdownSection(
                'Tháng', _selectedMonth, Month.values, getMonth, (value) {
              setState(() {
                _selectedMonth = value;
              });
            }),
            _buildDropdownSection('Năm', _selectedYear, Year.values, getYear,
                (value) {
              setState(() {
                _selectedYear = value;
              });
            }),
            Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(122, 38),
                    backgroundColor: const Color.fromRGBO(31, 70, 166, 1),
                  ),
                  child: const Text(
                    'Tạo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

Widget _buildDropdownSection<T>(String label, T selectedValue, List<T> values,
    String Function(T) getLabel, ValueChanged<T> onChanged) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        height: 8.0,
      ),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DropdownButton<T>(
                isExpanded: true,
                dropdownColor: Colors.white,
                style: TextStyle(color: Colors.black),
                value: selectedValue,
                items: values.map((T value) {
                  return DropdownMenuItem<T>(
                    value: value,
                    child: Text(getLabel(value)),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    onChanged(value);
                  }
                },
                icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                iconEnabledColor: Colors.black,
                iconDisabledColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 16.0,
      ),
    ],
  );
}

String getTypeReport(TypeReport type) {
  switch (type) {
    case TypeReport.BaoCaoTon:
      return "Báo cáo tồn";
    case TypeReport.BaoCaoCongNo:
      return "Báo cáo công nợ";
    default:
      return '';
  }
}

String getMonth(Month thang) {
  switch (thang) {
    case Month.Thang1:
      return 'Tháng 1';
    case Month.Thang2:
      return 'Tháng 2';
    case Month.Thang3:
      return 'Tháng 3';
    case Month.Thang4:
      return 'Tháng 4';
    case Month.Thang5:
      return 'Tháng 5';
    case Month.Thang6:
      return 'Tháng 6';
    case Month.Thang7:
      return 'Tháng 7';
    case Month.Thang8:
      return 'Tháng 8';
    case Month.Thang9:
      return 'Tháng 9';
    case Month.Thang10:
      return 'Tháng 10';
    case Month.Thang11:
      return 'Tháng 11';
    case Month.Thang12:
      return 'Tháng 12';
    default:
      return '';
  }
}

String getYear(Year year) {
  switch (year) {
    case Year.Nam2019:
      return 'Năm 2019';
    case Year.Nam2020:
      return 'Năm 2020';
    case Year.Nam2021:
      return 'Năm 2021';
    case Year.Nam2022:
      return 'Năm 2022';
    case Year.Nam2023:
      return 'Năm 2023';
    case Year.Nam2024:
      return 'Năm 2024';
    case Year.Nam2025:
      return 'Năm 2025';
    default:
      return '';
  }
}

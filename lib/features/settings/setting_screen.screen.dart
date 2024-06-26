import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shelfify/bottom_nav.dart';
import 'package:shelfify/core/constants/styles/app_colors.dart';
import 'package:shelfify/core/services/local_storage/local_store.provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shelfify/features/settings/setting_provide.dart'; // Thêm dòng này

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedPreferencesStateNotifier = localStoreProvider;

    TextEditingController soLuongNhapController = TextEditingController();
    TextEditingController soLuongTonKhoController = TextEditingController();
    TextEditingController soLuongTonToiThieuController =
        TextEditingController();
    TextEditingController tiLeTinhDonGiaController = TextEditingController();
    TextEditingController soTienNoController = TextEditingController();

    // Thêm hàm async để đọc giá trị từ SharedPreferences
    void readSharedPreferences() async {
      final localStorage = ref.watch(localStoreProvider);
      soLuongNhapController.text =
          await localStorage.getString("soLuongNhapToiThieu") ?? '';
      soLuongTonKhoController.text =
          await localStorage.getString("soLuongTonKhoToiDa") ?? '';
      soLuongTonToiThieuController.text =
          await localStorage.getString("soLuongTonToiThieuSauBan") ?? '';
      tiLeTinhDonGiaController.text =
          await localStorage.getString("tiLeTinhDonGiaBan") ?? '';
      soTienNoController.text =
          await localStorage.getString("soTienNoToiDa") ?? '';
    }

    // Gọi hàm đọc SharedPreferences khi màn hình được build
    readSharedPreferences();

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
          'Cài đặt',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextFieldSection('Số lượng nhập tối thiểu', '150',
                TextInputType.number, soLuongNhapController),
            buildTextFieldSection('Số lượng tồn kho tối đa', '300',
                TextInputType.number, soLuongTonKhoController),
            buildTextFieldSection('Số lượng tồn tối thiểu sau bán', '20',
                TextInputType.number, soLuongTonToiThieuController),
            buildTextFieldSection('Tỉ lệ tính đơn giá bán', '105%',
                TextInputType.number, tiLeTinhDonGiaController),
            buildTextFieldSection('Số tiền nợ tối đa', '1.000.000 VND',
                TextInputType.number, soTienNoController),
            const Text(
              'Kiểm tra quy định',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (ref.watch(settingCheckBoxStatedProvider)) {
                    ref.read(settingCheckBoxStatedProvider.notifier).state =
                        false;
                  } else {
                    ref.read(settingCheckBoxStatedProvider.notifier).state =
                        true;
                  }
                },
                style: ButtonStyle(
                  backgroundColor: ref.read(settingCheckBoxStatedProvider)
                      ? MaterialStateProperty.all(Color.fromARGB(255, 116, 174, 245))
                      : MaterialStateProperty.all(Color.fromARGB(255, 180, 176, 176)),
                ),
                child: const Text(
                  'Áp dụng quy định kiểm tra số tiền thu',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () async {
                    await ref.watch(localStoreProvider).setString(
                        "soLuongNhapToiThieu", soLuongNhapController.text);
                    await ref.watch(localStoreProvider).setString(
                        "soLuongTonKhoToiDa", soLuongTonKhoController.text);
                    await ref.watch(localStoreProvider).setString(
                        "soLuongTonToiThieuSauBan",
                        soLuongTonToiThieuController.text);
                    await ref.watch(localStoreProvider).setString(
                        "tiLeTinhDonGiaBan", tiLeTinhDonGiaController.text);
                    await ref
                        .watch(localStoreProvider)
                        .setString("soTienNoToiDa", soTienNoController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(122, 38),
                    backgroundColor: const Color.fromRGBO(31, 70, 166, 1),
                  ),
                  child: const Text(
                    'Lưu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          ],
        ),
      )),
      bottomNavigationBar: const BottomNavigationBarWidget(
        currentIndex: 3,
      ),
    );
  }
}

Widget buildTextFieldSection(String labelText, String hintText,
    TextInputType inputType, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        controller: controller,
        keyboardType: inputType,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 172, 172, 172),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

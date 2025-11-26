import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/language_controller.dart';


class LanguagePage extends StatelessWidget {
  final LanguageController controller = Get.find<LanguageController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("language".tr)),

      body: ListView(
        children: [
          ListTile(
            title: Text("English"),
            onTap: () {
              controller.changeLanguage("en", "US");
              Get.back();
            },
          ),
          ListTile(
            title: Text("বাংলা"),
            onTap: () {
              controller.changeLanguage("bn", "BD");
              Get.back();
            },
          ),
          ListTile(
            title: Text("हिंदी"),
            onTap: () {
              controller.changeLanguage("hi", "IN");
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}

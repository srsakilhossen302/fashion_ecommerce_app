import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  void changeLanguage(String langCode, String countryCode) {
    var locale = Locale(langCode, countryCode);
    Get.updateLocale(locale);
  }
}

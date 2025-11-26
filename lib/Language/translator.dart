import 'package:e_commerce_fashion_app/Language/Bangla.dart';
import 'package:e_commerce_fashion_app/Language/Hindi.dart';
import 'package:e_commerce_fashion_app/Language/english.dart';
import 'package:get/get.dart';

class Language extends Translations{

  @override

  Map<String, Map<String, String>> get keys =>{

    "en_US": english,
    "bn_BD": bangla,
    "hi_IN": hindi,

  };


}
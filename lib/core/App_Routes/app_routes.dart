import 'package:get/get.dart';
import '../../View/Screen/Home_Screen/home_page.dart';




class AppRoute {
  ///==================== Initial Routes ====================
  static const String homeScreen = "/home_screen";

  static List<GetPage> routes = [
    ///==================== Authentication  Routes ====================

    GetPage(name: homeScreen, page: () => const HomePage()),




  ];
}

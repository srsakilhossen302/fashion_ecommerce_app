import 'package:get/get.dart';
import '../../View/Screen/Blog_Grid_View/blog_grid_view.dart';
import '../../View/Screen/Home_Screen/home_page.dart';




class AppRoute {
  ///==================== Initial Routes ====================
  static const String homeScreen = "/home_screen";
  static const String blogGridView = "/blogGridView";

  static List<GetPage> routes = [
    ///==================== Authentication  Routes ====================

    GetPage(name: homeScreen, page: () => const HomePage()),
    GetPage(name: blogGridView, page: () => const BlogGridView()),




  ];
}

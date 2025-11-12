import 'package:get/get.dart';
import '../../View/Screen/Blog_Grid_View/blog_grid_Fashion.dart';
import '../../View/Screen/Blog_Grid_View/blog_grid_view.dart';
import '../../View/Screen/Home_Screen/home_page.dart';
import '../../View/Screen/Home_Screen/product_page/product_details_page.dart' show ProductDetailPage;




class AppRoute {
  ///==================== Initial Routes ====================
  static const String homeScreen = "/home_screen";
  static const String blogGridView = "/blogGridView";
  static const String blogGridFashion = "/blogGridFashion";
  static const String productDetailPage = "/productDetailPage";

  static List<GetPage> routes = [
    ///==================== Authentication  Routes ====================

    GetPage(name: homeScreen, page: () => const HomePage()),
    GetPage(name: blogGridView, page: () => const BlogGridView()),
    GetPage(name: blogGridFashion, page: () => const BlogGridFashion()),
   // GetPage(name: productDetailPage, page: () => const ProductDetailPage(title: "", image: "",)),




  ];
}

import 'package:e_commerce_fashion_app/View/Widgegt/Custom_Drawer/Man.dart';
import 'package:get/get.dart';
import '../../View/Screen/All_Explore_More/all_explore_more.dart' show AllExploreMore;
import '../../View/Screen/Apparel_Explore/apparel_Explore.dart';
import '../../View/Screen/Bag_Explore_More/bag_Explore_More.dart';
import '../../View/Screen/Blog_Grid_View/Promo.dart' show Promo;
import '../../View/Screen/Blog_Grid_View/blog_grid_Fashion.dart';
import '../../View/Screen/Blog_Grid_View/blog_grid_view.dart';
import '../../View/Screen/Dress_Explore_More/dress_Explore_More.dart';
import '../../View/Screen/Home_Screen/home_page.dart';
import '../../View/Screen/Sign_In/sign_in_view.dart';
import '../../View/Screen/Sign_Up/sign_up_view.dart';
import '../../View/Screen/T_Shirt_Explore_More/t_shirt_Explore_More.dart';
import '../../View/Screen/splashScreen/splash_screen_view.dart';
import '../../View/Widgegt/Custom_Drawer/Custom_Drawer.dart';
import '../../View/Widgegt/Custom_Drawer/Custom_Drawer_Menu.dart';
import '../../View/Widgegt/Custom_Drawer/Kids.dart';
import '../../View/Widgegt/LanguagePage.dart';




class AppRoute {
  ///==================== Initial Routes ====================///
  static const String homeScreen = "/home_screen";
  static const String blogGridView = "/blogGridView";
  static const String blogGridFashion = "/blogGridFashion";
  static const String productDetailPage = "/productDetailPage";
  static const String PromoPage = "/PromoPage";
  static const String customDrawerMenu = "/customDrawerMenu";
  static const String kids = "/kids";
  static const String man = "/man";
  static const String customDrawer = "/customDrawer";
  static const String allExploreMore = "/allExploreMore";
  static const String apparelExplore = "/apparelExplore";
  static const String dressExploreMore = "/dressExploreMore";
  static const String tShirtExploreMore = "/tShirtExploreMore";
  static const String bagExploreMore = "/bagExploreMore";
  static const String splashScreen = "/splashScreen";
  static const String signInScreen = "/signInScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String languagePage = "/languagePage";

  static List<GetPage> routes = [
    ///==================== Authentication  Routes ====================///

    GetPage(name: homeScreen, page: () => const HomePage()),
    GetPage(name: blogGridView, page: () => const BlogGridView()),
    GetPage(name: blogGridFashion, page: () => const BlogGridFashion()),
    GetPage(name: PromoPage, page: () => const Promo()),
    GetPage(name: customDrawerMenu, page: () => const CustomDrawerMenu()),
    GetPage(name: kids, page: () => const Kids()),
    GetPage(name: man, page: () => const Man()),
    GetPage(name: customDrawer, page: () => const CustomDrawer()),
    GetPage(name: allExploreMore, page: () => const AllExploreMore()),
    GetPage(name: apparelExplore, page: () => const ApparelExplore()),
    GetPage(name: dressExploreMore, page: () => const DressExploreMore()),
    GetPage(name: tShirtExploreMore, page: () => const TShirtExploreMore()),
    GetPage(name: bagExploreMore, page: () => const BagExploreMore()),
    GetPage(name: splashScreen, page: () =>  SplashScreenView()),
    GetPage(name: signInScreen, page: () =>  SignInView()),
    GetPage(name: signUpScreen, page: () =>  SignUpView()),
    GetPage(name: languagePage, page: () =>  LanguagePage()),
   // GetPage(name: productDetailPage, page: () => const ProductDetailPage(title: "", image: "",)),




  ];
}

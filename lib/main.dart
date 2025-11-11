import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'View/Screen/Home_Screen/home_page_Controller.dart';
import 'core/App_Routes/app_routes.dart';

void main() {
  ///Dependency Injection
  Get.put(HomePageController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 4600),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoute.homeScreen,
          getPages: AppRoute.routes,
          builder: (context, widget) {
            // ScreenUtil
            ScreenUtil.init(context);
            return widget!;
          },
        );
      },
    );
  }
}

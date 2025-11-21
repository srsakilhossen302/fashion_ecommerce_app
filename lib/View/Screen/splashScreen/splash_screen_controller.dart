import 'dart:async';
import 'package:e_commerce_fashion_app/core/App_Routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
   void onInit() {
    super.onInit();
    startSplash();
  }


  void startSplash()  {
    Timer(const Duration(seconds: 4), ()  {

      Get.offAllNamed(AppRoute.signInScreen);

      // String token = await SharePrefsHelper.getString(AppConstants.bearerToken);
      //
      // bool hasSeenOnboarding = await SharePrefsHelper.getBool(
      //     SharedPreferenceValue.isOnboarding) ?? false;
      //
      // if (token.isNotEmpty) {
      //   Get.offNamed(AppRoutes.homePage); // Logged in
      // } else {
      //   if (hasSeenOnboarding) {
      //     Get.offNamed(AppRoutes.signinpage);
      //   } else {
      //     Get.offNamed(AppRoutes.slide); // Onboarding
      //   }
      // }
    }
    );
   }
}

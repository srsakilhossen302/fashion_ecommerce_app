import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View/Screen/Sign_In/sign_in_controller.dart';
import '../../View/Screen/Sign_Up/sign_up_controller.dart';
import '../../View/Screen/splashScreen/splash_screen_controller.dart';
import '../../controllers/language_controller.dart';
///==================== Dependency Injection ====================///
class DependencyInjection {
  static void init() {
    Get.put(SplashScreenController(), permanent:true);
    Get.put(SignInController(), permanent:true);
    Get.put(SignUpController(), permanent:true);
    Get.put(LanguageController(), permanent:true);
  }
}
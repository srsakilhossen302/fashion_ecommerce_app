import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View/Screen/splashScreen/splash_screen_controller.dart';

class DependencyInjection {
  static void init() {
    Get.put(SplashScreenController(), permanent:true);


  }
}
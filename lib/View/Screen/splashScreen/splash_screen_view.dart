import 'package:e_commerce_fashion_app/Utils/AppIcons/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {

  // void navigateNextScreen(BuildContext context) async{
  //
  //   await Future.delayed(const Duration(seconds: 4));
  //
  //   bool isSlideScreen = await PreferencesHelper.getSlideScreen();
  //   if(isSlideScreen){
  //     Get.offAllNamed(Routes.SIGN_IN);
  //   } else{
  //     Get.offAllNamed(Routes.SLIDE_SCREEN);
  //   }
  // }

  @override
  Widget build(BuildContext context) {

    // WidgetsBinding.instance.addPostFrameCallback((_)
    // {
    //   navigateNextScreen(context);
    // }
    // );
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(
        child: Container(
          height: 170.h,
          width: 170.w,
          decoration: BoxDecoration(
            color: Color(0xffC4C4C4),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
              AppIcons.Applogo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      )

    );
  }
}
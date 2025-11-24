import 'package:e_commerce_fashion_app/Utils/StaticString/static_string.dart';
import 'package:e_commerce_fashion_app/View/Screen/Sign_Up/sign_up_controller.dart';
import 'package:e_commerce_fashion_app/core/App_Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Utils/AppImg/app_img.dart';
import '../../Widgegt/CustomButton/CustomButton.dart';



class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  AppString.createAnAccount,
                  style: TextStyle(
                    fontFamily: 'Playfair',
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000),
                  ),
                ),
                SizedBox(height: 36.h),

                /// Username Field
                TextField(
                  controller: controller.emailPhoneController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF3F3F3),
                    labelText: AppString.UsernameOrEmail,
                    labelStyle: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 12.sp,
                      color: const Color(0xff676767),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 15.w,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 22.sp,
                      color: const Color(0xff626262),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),

                // Password Field
                Obx(
                      () => TextField(
                    controller: controller.passwordController,
                    obscureText: controller.isObscure.value,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF3F3F3),
                      labelText: AppString.password,
                      labelStyle: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 12.sp,
                        color: const Color(0xff676767),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 15.w,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20.sp,
                        color: const Color(0xff626262),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isObscure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 20.sp,
                          color: const Color(0xff626262),
                        ),
                        onPressed: controller.toggleObscure,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),

                // Confirm Password
                Obx(
                      () => TextField(
                    controller: controller.confirmpasswordController,
                    obscureText: controller.isObscure.value,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF3F3F3),
                      labelText: AppString.confirmPassword,
                      labelStyle: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 12.sp,
                        color: const Color(0xff676767),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 15.w,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20.sp,
                        color: const Color(0xff626262),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isObscure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 20.sp,
                          color: const Color(0xff626262),
                        ),
                        onPressed: controller.toggleObscure,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),

                // Terms Text
                Row(
                  children: [
                    Text(
                      AppString.byClicking,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 12,
                        color: const Color(0xff575757),
                      ),
                    ),
                    Text(
                      AppString.signUp,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 12,
                        color: const Color(0xffF83758),
                      ),
                    ),
                    Text(
                       AppString.publicOffer,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 12,
                        color: const Color(0xff575757),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),

                // Create Account Button
                CustomButton(
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF83758),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  text: AppString.createAccount,
                  height: 50.h,
                  width: double.infinity,
                  textStyle: TextStyle(
                    fontFamily: "Open Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffFFFFFF),
                  ),
                  onPressed: () {
                    Get.offAllNamed(AppRoute.homeScreen);
                  },
                ),
                SizedBox(height: 50.h),

                // OR Continue
                Center(
                  child: Column(
                    children: [
                      Text(
                        AppString.continueWith,
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff575757),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Expanded(
                            child: Image.asset(
                              AppImages.googleLogo,
                              height: 54.h,
                              width: 54.w,
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              AppImages.appleLogo,
                              height: 54.h,
                              width: 54.w,
                            ),
                          ),

                          Expanded(
                            child: Image.asset(
                              AppImages.fdLogo,
                              height: 54.h,
                              width: 54.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppString.alreadyAccount,
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontSize: 14.sp,
                              color: const Color(0xff575757),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoute.signInScreen),
                            child: Text(
                              AppString.loginB,
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xffF83758),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(String assetPath) {
    return Image.asset(
      assetPath,
      height: 48.h,
      width: 48.w,
    );
  }
}

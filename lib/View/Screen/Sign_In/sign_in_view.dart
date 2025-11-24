import 'package:e_commerce_fashion_app/Utils/AppImg/app_img.dart';
import 'package:e_commerce_fashion_app/Utils/StaticString/static_string.dart';
import 'package:e_commerce_fashion_app/View/Screen/Sign_In/sign_in_controller.dart';
import 'package:e_commerce_fashion_app/core/App_Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../Widgegt/CustomButton/CustomButton.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w), // responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),

              /// Welcome Text
              Padding(
                padding: EdgeInsets.only(right: 80.w),
                child: Text(
                  AppString.welcome,
                  maxLines: 2,
                  style: TextStyle(
                    fontFamily: 'Playfair',
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000),
                  ),
                ),
              ),

              SizedBox(height: 36.h),

              /// Email & Password Fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Email Field
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
                        fontWeight: FontWeight.w400,
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
                        size: 24.sp,
                        color: const Color(0xff626262),
                      ),
                    ),
                  ),

                  SizedBox(height: 31.h),

                  /// Password Field
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
                          fontWeight: FontWeight.w500,
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
                ],
              ),

              /// Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    //Get.toNamed(Routes.FORGOT);
                  },
                  child: Text(
                    AppString.forgotPassword,
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffF83758),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 51.h),

              /// Login Button
              CustomButton(
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF83758),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                text: AppString.loginB,
                onPressed: () {
                  Get.offAllNamed(AppRoute.homeScreen);
                },
                height: 50.h,
                width: 350.w,
                textStyle: TextStyle(
                  fontFamily: "Open Sans",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffFFFFFF),
                ),
              ),

              SizedBox(height: 75.h),

              /// Social Buttons
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 194.w,
                  height: 200.h,
                  child: Column(
                    children: [
                      Text(
                        AppString.continueWith,
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
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
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Image.asset(
                              AppImages.appleLogo,
                              height: 54.h,
                              width: 54.w,
                            ),
                          ),
                          SizedBox(width: 10.w),
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
                            AppString.createAnAccount,
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff575757),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoute.signUpScreen);
                            },
                            child: Text(
                              AppString.signUp,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

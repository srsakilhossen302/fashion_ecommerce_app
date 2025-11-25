import 'package:e_commerce_fashion_app/Utils/StaticString/static_string.dart';
import 'package:e_commerce_fashion_app/View/Widgegt/blog_grid_Fashion_Custom_Container.dart';
import 'package:e_commerce_fashion_app/core/App_Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/AppIcons/app_icons.dart';
import '../../../Utils/AppImg/app_img.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  int TselectedIndex = 2;

  int bselectedIndex =  2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.MenuIcon),
        ),
        title: SvgPicture.asset(AppIcons.Applogo, height: 32.h, width: 78.w),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppIcons.SearchIcon),
              ),
              SizedBox(width: 16.w),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppIcons.shoppingbagIcon),
              ),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32.h),
            Center(
              child: Text(
                AppString.blog,
                style: TextStyle(fontFamily: "Playfair", fontSize: 20.sp),
              ),
            ),
            SizedBox(height: 5.h),
            Image.asset(
              AppImages.Devider,
              width: 125.w,
              height: 10.h,
              color: Colors.black,
            ),
            SizedBox(height: 25.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.blogGridView);
                      setState(() {
                        TselectedIndex = 0;
                      });
                    },
                    child: Text(
                      AppString.all,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 0
                            ? Color(0xffDD8560)
                            : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Get.toNamed(AppRoute.blogGridFashion);
                        TselectedIndex = 1;
                      });
                    },
                    child: Text(
                      AppString.fashion,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 1
                            ? Color(0xffDD8560)
                            : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        TselectedIndex = 2;
                      });
                    },
                    child: Text(
                      AppString.promo,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 2
                            ? Color(0xffDD8560)
                            : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        TselectedIndex = 3;
                      });
                      //Get.toNamed(AppRoute.blogGridView);
                    },
                    child: Text(
                      AppString.policy,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 3
                            ? Color(0xffDD8560)
                            : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        TselectedIndex = 4;
                      });
                    },
                    child: Text(
                      AppString.lookbook,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 4
                            ? Color(0xffDD8560)
                            : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        TselectedIndex = 5;
                      });
                    },
                    child: Text(
                      AppString.sale,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 5
                            ? Color(0xffDD8560)
                            : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        TselectedIndex = 6;
                      });
                    },
                    child: Text(
                      AppString.sans,
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 6
                            ? Color(0xffDD8560)
                            : Color(0xff333333),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.h),

            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle8,
                description: AppString.promoDescription,
                date: AppString.promoDate),
            SizedBox(height: 24.h),
            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle7,
                description: AppString.promoDescription,
                date: AppString.promoDate),
            SizedBox(height: 24.h),
            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle6,
                description: AppString.promoDescription,
                date: AppString.promoDate),
            SizedBox(height: 24.h),
            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle10,
                description: AppString.promoDescription,
                date: AppString.promoDate),
            SizedBox(height: 24.h),
            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle9,
                description: AppString.promoDescription,
                date: AppString.promoDate),

            SizedBox(height: 24.h),
            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle4,
                description: AppString.promoDescription,
                date: AppString.promoDate),
            SizedBox(height: 24.h),
            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle1,
                description: AppString.promoDescription,
                date: AppString.promoDate),
            SizedBox(height: 24.h),
            BlogGridFashionCustomContainer(title: AppString.promoTitle,
                image: AppImages.rectangle5,
                description: AppString.promoDescription,
                date: AppString.promoDate),

            SizedBox(height: 28.h),
            Container(
              width: 211.w,
              height: 48.h,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xffDEDEDE)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppString.load,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Playfair",
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SvgPicture.asset(AppIcons.PlusIcon)
                ],
              ),
            ),

            SizedBox(height: 55.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  AppIcons.InstagramLogo,
                  width: 22.w,
                  height: 22.h,
                  color: Color(0xff000000),
                ),
                SvgPicture.asset(
                  AppIcons.YouTubeLogo,
                  width: 22.w,
                  height: 22.h,
                ),
                SvgPicture.asset(
                  AppIcons.TwitterLogo,
                  width: 22.w,
                  height: 22.h,
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Center(
              child: Image.asset(AppImages.Devider, width: 130.w, height: 10.h),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Column(
                children: [
                  Text(
                    AppString.supportSakil,
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    AppString.phnNumbar,
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    AppString.time,
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Image.asset(AppImages.Devider),
                ],
              ),
            ),
            SizedBox(height: 33.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      bselectedIndex = 0;
                    });
                  },
                  child: Text(
                    AppString.about,
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: bselectedIndex == 0 ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      bselectedIndex = 1;
                    });
                  },
                  child: Text(
                    AppString.contact,
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: bselectedIndex == 1 ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      bselectedIndex = 2;
                    });
                    //Get.toNamed(AppRoute.blogGridView);
                  },
                  child: Text(
                    AppString.blog,
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: bselectedIndex == 2 ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Container(
              width: 375.w,
              height: 45.h,
              decoration: BoxDecoration(color: Color(0xffC4C4C4)),
              child: Center(
                child: Text(
                  AppString.copyright,
                  style: TextStyle(
                    fontFamily: "Open Sans",
                    fontSize: 14.sp,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

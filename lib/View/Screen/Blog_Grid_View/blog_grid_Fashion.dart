import 'package:e_commerce_fashion_app/View/Widgegt/blog_grid_Fashion_Custom_Container.dart';
import 'package:e_commerce_fashion_app/core/App_Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/AppIcons/app_icons.dart';
import '../../../Utils/AppImg/app_img.dart';

class BlogGridFashion extends StatefulWidget {
  const BlogGridFashion({super.key});

  @override
  State<BlogGridFashion> createState() => _BlogGridFashionState();
}

class _BlogGridFashionState extends State<BlogGridFashion> {
  int TselectedIndex = 1;
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
                "Blog",
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
                      "All",
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
                        TselectedIndex = 1;
                      });
                    },
                    child: Text(
                      "Fashion",
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
                      "Promo",
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
                      "Policy",
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
                      "Lookbook",
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
                      "Sale",
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
                      "Sans",
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
            BlogGridFashionCustomContainer(title: "2021 Style Guide:"
                "The Biggest Fall Trends",
                image: AppImages.rectangle1,
                description: "The excitement of fall fashion is here and "
                    "I’m already loving some of the trend forecasts ",
                date: "4 days ago")
          ],
        ),
      ),
    );
  }
}

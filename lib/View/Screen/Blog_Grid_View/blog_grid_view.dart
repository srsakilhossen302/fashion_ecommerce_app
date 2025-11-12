import 'package:e_commerce_fashion_app/core/App_Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/AppIcons/app_icons.dart';
import '../../../Utils/AppImg/app_img.dart';
import '../../Widgegt/Blog_grid_view_Custom_Card.dart';

class BlogGridView extends StatefulWidget {
  const BlogGridView({super.key});

  @override
  State<BlogGridView> createState() => _BlogGridViewState();
}

class _BlogGridViewState extends State<BlogGridView> {
  int bselectedIndex = 2;
  int TselectedIndex = 0;
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
                      setState(() {
                        TselectedIndex = 0;
                      });
                    },
                    child: Text(
                      "All",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 0 ?  Color(0xffDD8560) : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.blogGridFashion);
                      setState(() {
                        TselectedIndex = 1;
                      });
                    },
                    child: Text(
                      "Fashion",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: TselectedIndex == 1 ?  Color(0xffDD8560) : Color(0xff333333),
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
                        color: TselectedIndex == 2 ?  Color(0xffDD8560) : Color(0xff333333),
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
                        color: TselectedIndex == 3 ?  Color(0xffDD8560) : Color(0xff333333),
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
                        color: TselectedIndex == 4 ?  Color(0xffDD8560) : Color(0xff333333),
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
                        color: TselectedIndex == 5 ?  Color(0xffDD8560) : Color(0xff333333),
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
                        color: TselectedIndex == 6 ? Color(0xffDD8560) : Color(0xff333333),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            FashionCard(
              image: AppImages.rectangle1,
              title: "2021 Style Guide: The Biggest Fall Trends",
              description:
              "You guys know how much I love mixing high and low-end – "
                  "it’s the best way to get the most bang for your "
                  "buck while still elevating your wardrobe. "
                  "The same goes for handbags! And honestly "
                  "they are probably the best pieces to mix and "
                  "match. I truly think the key to completing a look"
                  " is with a great bag and I found so many this year that "
                  "I wanted to share a round-up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
            FashionCard(
              image: AppImages.rectangle2,
              title: "2021 Style Guide: The Biggest Fall Trends",
              description:
              "You guys know how much I love mixing high and low-end "
                  "– it’s the best way to get the most bang for your "
                  "buck while still elevating your wardrobe. The same"
                  " goes for handbags! And honestly they are probably "
                  "the best pieces to mix and match. I truly think the "
                  "key to completing a look is with a great bag and I "
                  "found so many this year that I wanted to share a round-"
                  "up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
            FashionCard(
              image: AppImages.rectangle3,
              title: "2021 Style Guide: The Biggest Fall Trends",
              description:
              "You guys know how much I love mixing high and low-end – "
                  "it’s the best way to get the most bang for your buck "
                  "while still elevating your wardrobe. The same goes for"
                  " handbags! And honestly they are probably the best pieces "
                  "to mix and match. I truly think the key to completing a look "
                  "is with a great bag and I found so many this year that I wanted"
                  " to share a round-up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
            FashionCard(
              image: AppImages.rectangle4,
              title: "2021 Style Guide: The Biggest Fall Trends",
              description:
              "You guys know how much I love mixing high and low-end "
                  "– it’s the best way to get the most bang for your "
                  "buck while still elevating your wardrobe. The same "
                  "goes for handbags! And honestly they are probably the "
                  "best pieces to mix and match. I truly think the key to"
                  " completing a look is with a great bag and I found so many "
                  "this year that I wanted to share a round-up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
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
                  Text("Load more",
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
                    "support@Sakil.design",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "+8801774452302",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "08:00 - 22:00 - Everyday",
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
                    "About",
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
                    "Contact",
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
                    "Blog",
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
                  "Copyright © 2025 Sakil. All Rights Reserved.",
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

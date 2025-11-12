import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Utils/AppIcons/app_icons.dart';
import '../../../Utils/AppImg/app_img.dart';
import '../../Widgegt/Blog_grid_view_Custom_Card.dart';

class BlogGridView extends StatefulWidget {
  const BlogGridView({super.key});

  @override
  State<BlogGridView> createState() => _BlogGridViewState();
}

class _BlogGridViewState extends State<BlogGridView> {
  int? bselectedIndex;
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
                        bselectedIndex = 0;
                      });
                    },
                    child: Text(
                      "Fashion",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: bselectedIndex == 0 ?  Color(0xffDD8560) : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        bselectedIndex = 1;
                      });
                    },
                    child: Text(
                      "Promo",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: bselectedIndex == 1 ?  Color(0xffDD8560) : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        bselectedIndex = 2;
                      });
                      //Get.toNamed(AppRoute.blogGridView);
                    },
                    child: Text(
                      "Policy",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: bselectedIndex == 2 ?  Color(0xffDD8560) : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        bselectedIndex = 3;
                      });
                    },
                    child: Text(
                      "Lookbook",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: bselectedIndex == 3 ?  Color(0xffDD8560) : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        bselectedIndex = 4;
                      });
                    },
                    child: Text(
                      "Sale",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: bselectedIndex == 5 ?  Color(0xffDD8560) : Color(0xff333333),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        bselectedIndex = 6;
                      });
                    },
                    child: Text(
                      "Sans",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                        color: bselectedIndex == 6 ? Color(0xffDD8560) : Color(0xff333333),
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
              "You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe. The same goes for handbags! And honestly they are probably the best pieces to mix and match. I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
            FashionCard(
              image: AppImages.rectangle2,
              title: "2021 Style Guide: The Biggest Fall Trends",
              description:
              "You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe. The same goes for handbags! And honestly they are probably the best pieces to mix and match. I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
            FashionCard(
              image: AppImages.rectangle3,
              title: "2021 Style Guide: The Biggest Fall Trends",
              description:
              "You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe. The same goes for handbags! And honestly they are probably the best pieces to mix and match. I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
            FashionCard(
              image: AppImages.rectangle4,
              title: "2021 Style Guide: The Biggest Fall Trends",
              description:
              "You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe. The same goes for handbags! And honestly they are probably the best pieces to mix and match. I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags.",
              tag1: "Fashion",
              tag2: "Tips",
              date: "4 days ago",
            ),
            SizedBox(height: 28.h),

          ],
        ),
      ),
    );
  }
}

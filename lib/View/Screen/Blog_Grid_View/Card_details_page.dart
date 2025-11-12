import 'package:e_commerce_fashion_app/Utils/AppImg/app_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Utils/AppIcons/app_icons.dart';

class DetailPage extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final String date;

  const DetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int bselectedIndex = 2;

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h),
              ClipRRect(
                child: Image.asset(
                  widget.image,
                  width: double.infinity,
                  height: 221.h,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                        fontFamily: "Playfair",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                        height: 1.6,
                        fontFamily: "Open Sans",
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),

              //SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          top: 10.h,
                        ),
                        child: Container(
                          width: 342.w,
                          height: 450.h,
                          child: Image.asset(
                            AppImages.image14,
                            // width: double.infinity,
                            // height: double.infinity,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          top: 10.h,
                        ),
                        child: Container(
                          width: 342.w,
                          height: 450.h,
                          child: Image.asset(
                            AppImages.image14,
                            // width: double.infinity,
                            // height: double.infinity,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          top: 10.h,
                        ),
                        child: Container(
                          width: 342.w,
                          height: 450.h,
                          child: Image.asset(
                            AppImages.image14,
                            // width: double.infinity,
                            // height: double.infinity,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Text(
                  "I found this Saint Laurent canvas "
                  "handbag this summer and immediately "
                  "fell in love. The neutral fabrics "
                  "are so beautiful and I like how this"
                  " handbag can also carry into fall. "
                  "The mini Fendi bucket bag with the "
                  "sheer fabric is so fun and such a statement"
                  " bag. Also this DeMellier off white bag is"
                  " so cute to carry to a dinner with you or "
                  "going out, it’s small but not too small to fit "
                  "your phone and keys still.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff000000),
                    height: 1.6,
                    fontFamily: "Open Sans",
                    letterSpacing: 1,
                  ),
                ),
              ),
              SizedBox(height:  26.h),
              Padding(
                padding:  EdgeInsets.only(right: 16.w, left: 16.w,),
                child: Row(
                  children: [
                    Text("Posted by OpenFashion |",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                        height: 1.6,
                        fontFamily: "Open Sans",
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Text("3 Days ago",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                        height: 1.6,
                        fontFamily: "Open Sans",
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: Color(0xff888888), width: 1),
                      ),
                      child: Text(
                        "#Fashion",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 12.sp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: Color(0xff888888), width: 1),
                      ),
                      child: Text(
                        "#Tips",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 12.sp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
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
      ),
    );
  }
}

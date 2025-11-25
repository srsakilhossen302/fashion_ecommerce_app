import 'package:e_commerce_fashion_app/Utils/AppImg/app_img.dart';
import 'package:e_commerce_fashion_app/Utils/StaticString/static_string.dart';
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
                  AppString.cardText,
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
                    Text(AppString.posted,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                        height: 1.6,
                        fontFamily: "Open Sans",
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Text(AppString.postedDate,
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
                        AppString.postedFashion,
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
                        AppString.postedTips,
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
      ),
    );
  }
}

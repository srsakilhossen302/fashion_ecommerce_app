import 'package:e_commerce_fashion_app/Utils/AppImg/app_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Utils/AppIcons/app_icons.dart';

class DetailPage extends StatelessWidget {
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
                  image,
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
                      title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                        fontFamily: "Playfair",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      description,
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
              SizedBox(height:  32.h),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

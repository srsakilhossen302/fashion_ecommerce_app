import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Screen/Blog_Grid_View/Card_details_page.dart';

class FashionCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String tag1;
  final String tag2;
  final String date;

  const FashionCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.tag1,
    required this.tag2,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => DetailPage(
            image: image,
            title: title,
            description: description,
            date: date,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// IMAGE + TEXT OVERLAY
            ClipRRect(
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    width: double.infinity,
                    height: 200.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.6),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16.h,
                    left: 16.w,
                    right: 16.w,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Color(0xffFCFCFC),
                        fontSize: 17.sp,
                        fontFamily: "Playfair",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // TAGS + DATE
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
                      "#$tag1",
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
                      "#$tag2",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 12.sp,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "Open Sans",
                      color: Color(0xff888888),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

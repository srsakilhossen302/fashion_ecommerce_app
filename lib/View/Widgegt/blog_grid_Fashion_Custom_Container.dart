import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screen/Blog_Grid_View/blog_grid_Fashion_details_page.dart';

class BlogGridFashionCustomContainer extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String date;

  BlogGridFashionCustomContainer({
    required this.title,
    required this.image,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
              () => BlogGridFashionDetailsPage(
            image: image,
            title: title,
            description: description,
            date: date,
          ),
        );
      },
      child: Container(
        width: 342.w,
        height: 155.h,
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            /// Left Side Image
            ClipRRect(
              child: Image.asset(
                image,
                height: double.infinity,
                width: 120.w,
                fit: BoxFit.fitHeight,
              ),
            ),
            /// Right Side Details
            Expanded(child: Padding(
              padding:  EdgeInsets.only(left: 12.w, right: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.toUpperCase(),
                    maxLines: 3,
                    style: TextStyle(
                      fontFamily: "Playfair",
                      fontWeight: FontWeight.w600,
                      fontSize: 16.2.sp,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Instrument Serif",
                      fontSize: 15.sp,
                      color: Color(0xff616161),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    date,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Instrument Serif",
                      fontSize: 13.sp,
                      color: Color(0xff616161),
                    ),
                  ),
                ],
              ),
            )
            )
          ],
        ),

      ),
    );
  }
}

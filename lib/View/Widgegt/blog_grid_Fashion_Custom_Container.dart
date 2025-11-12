import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    fontFamily: "Playfair",
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Instrument Serif",
                    fontSize: 14.sp,
                    color: Color(0xff616161),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.h),
                Text(
                  date,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Instrument Serif",
                    fontSize: 12.sp,
                    color: Color(0xff616161),
                  ),
                ),
              ],
            )
            )
          ],
        ),

      ),
    );
  }
}

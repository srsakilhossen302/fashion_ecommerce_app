import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Screen/Home_Screen/product_page/product_details_page.dart';

class CustomProductCard extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final String description;

  CustomProductCard({
    required this.title,
    required this.image,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tap -> Navigate to Detail page with this container's data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailPage(
              title: title,
              image: image,
              price: price,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        width: 160.w,
        height: 277.h,


        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.asset(
                image,
                height: 180.h,
                width: double.infinity,
                fit: BoxFit.fitHeight,

              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "\$${price}",
              style: TextStyle(fontSize: 14, color: Color(0xffDD8560)),
            ),
          ],
        ),
      ),
    );
  }
}

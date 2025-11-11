import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailPage extends StatelessWidget {
  final String title;
  final String image;
  final double price;
  final String description;

  ProductDetailPage({
    required this.title,
    required this.image,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 290.h,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: 20),
            Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text("\$${price}", style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Buy Now")),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Utils/AppIcons/app_icons.dart';

class ProductDetailPage extends StatefulWidget {
  final String title;
  final String image;
  final double price;
  final String description;

  const ProductDetailPage({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
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
            SizedBox(height: 40.h),
            Center(
              child: Text(
                "Checkout",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.h,
                  fontFamily: 'Playfair',
                  color: const Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              width: 315.w,
              height: 134.h,
              child: Row(
                children: [
                  // Left Side Image
                  ClipRRect(
                    child: Image.asset(
                      widget.image,
                      height: 130.h,
                      width: 120.w,
                      fit: BoxFit.cover,
                    ),
                  ),
        
                  // Right Side Details
                  Expanded(
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title.toUpperCase(),
                            style: TextStyle(
                              fontFamily: "Playfair",
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            widget.description,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Instrument Serif",
                              fontSize: 14.sp,
                              color: Colors.grey[700],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
        
                          // Quantity & Price Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Quantity Section
                              Row(
                                children: [
                                  _qtyButton(Icons.remove, () {
                                    setState(() {
                                      if (quantity > 1) quantity--;
                                    });
                                  }),
                                  Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Text(
                                      quantity.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                  _qtyButton(Icons.add, () {
                                    setState(() {
                                      quantity++;
                                    });
                                  }),
                                ],
                              ),
        
                              // Price Section
                              Text(
                                "\$${(widget.price * quantity).toStringAsFixed(0)}",
                                style: TextStyle(
                                  color: const Color(0xffDD8560),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 17.h),
            Container(
              width: 343.w,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 17.h),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.VoucherIcon, width: 24.w, height: 24.h),
                  SizedBox(width: 10.w),
                  Text("Add promo code",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.h),
            Container(
              width: 343.w,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 17.h),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.DoortoDoorDeliveryIcon, width: 24.w, height: 24.h),
                  SizedBox(width: 10.w),
                  Text("Delivery",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                      )
                  ),
                  SizedBox(width: 140.w),
                  Text("Free",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 16.sp,
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.h),
            Container(
              width: 343.w,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 160.h),
            Padding(
              padding: EdgeInsets.only(right: 16.w, left: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Est. Total",
                    style: TextStyle(
                      fontFamily: "Playfair",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "\$${(widget.price * quantity).toStringAsFixed(0)}",
                    style: TextStyle(
                      color: const Color(0xffDD8560),
                      fontFamily: "Instrument Serif",
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 24.h),
            Container(
              width: 375.w,
              height: 45.h,
              decoration: BoxDecoration(color: Color(0xff000000)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.shoppingbagIcon, width: 22.w, height: 22.h, color: Color(0xffFFFFFF),),
                  SizedBox(width: 14.w),
                  Text(
                    "Checkout",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xffFFFFFF),
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

  Widget _qtyButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 26.h,
        width: 26.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: Icon(
          icon,
          size: 16.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}

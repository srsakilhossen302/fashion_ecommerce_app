import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../Utils/AppIcons/app_icons.dart';
import '../../../Utils/AppImg/app_img.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String expandedSection = "";
  String expandedSectionk = "";
  String expandedSectionm = "";
  int bselectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 16.w),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: SvgPicture.asset(AppIcons.CloseIcon),
                  ),
                  SizedBox(width: 40.w),
                  Text(
                    "Open Fashion",
                    style: TextStyle(fontFamily: "Playfair", fontSize: 20.sp),
                  ),
                ],
              ),
            ),

            /// ================== Drawer Menu Tab ==================
            Column(
              children: [
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
                        "Women",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 16.sp,
                          color: bselectedIndex == 0
                              ? const Color(0xff000000)
                              : const Color(0xff333333),
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
                        "Man",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 16.sp,
                          color: bselectedIndex == 1
                              ? const Color(0xff000000)
                              : const Color(0xff333333),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          bselectedIndex = 2;
                        });
                      },
                      child: Text(
                        "Kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 16.sp,
                          color: bselectedIndex == 2
                              ? const Color(0xff000000)
                              : const Color(0xff333333),
                        ),
                      ),
                    ),
                  ],
                ),

                /// ================== Black Base Line ==================
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  height: 1.h,
                  width: 310.w,
                  color: const Color(0xff888888),
                ),

                /// ================== Red Animated Line ==================
                Transform.translate(
                  offset: Offset(0, -1.5.h),
                  child: AnimatedAlign(
                    alignment: _getAlignment(),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Container(
                      height: 2.5.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffDD8560),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            /// ================== Show Content Based on Tab ==================
            _buildContent(),
          ],
        ),
      ),
    );
  }

  /// ================== Change Animation Alignment ==================
  Alignment _getAlignment() {
    switch (bselectedIndex) {
      case 0:
        return Alignment(-0.8, 0);
      case 1:
        return Alignment(0, 0);
      case 2:
        return Alignment(0.8, 0);
      default:
        return Alignment(-0.8, 0);
    }
  }

  /// ================== Change Content by Index ==================
  Widget _buildContent() {
    switch (bselectedIndex) {
      case 0:
        return _womenContent();
      case 1:
        return _manContent();
      case 2:
        return _kidsContent();
      default:
        return _womenContent();
    }
  }

  Widget _womenContent() {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              /// ================== Drawer Section: New ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "New",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSection = expandedSection == "New" ? "" : "New";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSection == "New"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSection == "New")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "skirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Apparel ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Apparel",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSection = expandedSection == "Apparel"
                            ? ""
                            : "Apparel";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSection == "Apparel"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSection == "Apparel")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Bags ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Bags",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSection = expandedSection == "Bags" ? "" : "Bags";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSection == "Bags"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSection == "Bags")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "handbags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "backpacks",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "tote bags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "clutch",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "crossbody",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Shoes ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Shoes",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSection = expandedSection == "Shoes" ? "" : "Shoes";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSection == "Shoes"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSection == "Shoes")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "skirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Beauty ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Apparel",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSection = expandedSection == "Beauty"
                            ? ""
                            : "Beauty";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSection == "Beauty"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSection == "Beauty")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "tops",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "jackets",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "jeans",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "trousers",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "hoodies",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "blazers",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Accessories ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Bags",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSection = expandedSection == "Accessories" ? "" : "Accessories";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSection == "Accessories"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSection == "Accessories")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "handbags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "backpacks",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "tote bags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "clutch",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "crossbody",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 30.h,),
              Padding(
                padding:  EdgeInsets.only(left: 16.h),
                child: ListTile(
                  title: Text("+8801774452302",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      letterSpacing: 2,
                      color: const Color(0xff000000),
                    ),
                  ),
                  leading: SvgPicture.asset(AppIcons.callIcon),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 16.h),
                child: ListTile(
                  title: Text("Store locator",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      letterSpacing: 2,
                      color: const Color(0xff000000),
                    ),
                  ),
                  leading: SvgPicture.asset(AppIcons.LocationIcon),
                ),
              ),
              SizedBox(height: 30.h,),
              Center(
                child: Image.asset(AppImages.Devider),
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.TwitterLogo, height: 24.h, width: 24.w,),
                  SizedBox(width:  30.w),
                  SvgPicture.asset(AppIcons.InstagramLogo, height: 24.h, width: 24.w,),
                  SizedBox(width:  30.w),
                  SvgPicture.asset(AppIcons.YouTubeLogo, height: 24.h, width: 24.w,)
                ],
              )

            ],
          ),
        ),
      ],
    );
  }

  Widget _manContent() {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              /// ================== Drawer Section: New ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "New",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionm = expandedSectionm == "New" ? "" : "New";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionm == "New"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionm == "New")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "skirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Apparel ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Apparel",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionm = expandedSectionm == "Apparel"
                            ? ""
                            : "Apparel";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionm == "Apparel"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionm == "Apparel")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Bags ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Bags",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionm = expandedSectionm == "Bags" ? "" : "Bags";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionm == "Bags"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionm == "Bags")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "handbags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "backpacks",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "tote bags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "clutch",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "crossbody",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Shoes ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Shoes",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionm = expandedSectionm == "Shoes" ? "" : "Shoes";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionm == "Shoes"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionm == "Shoes")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "skirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Beauty ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Apparel",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionm = expandedSectionm == "Beauty"
                            ? ""
                            : "Beauty";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionm == "Beauty"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionm == "Beauty")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "tops",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "jackets",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "jeans",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "trousers",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "hoodies",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "blazers",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Accessories ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Bags",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionm = expandedSectionm == "Accessories" ? "" : "Accessories";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionm == "Accessories"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionm == "Accessories")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "handbags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "backpacks",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "tote bags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "clutch",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "crossbody",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 30.h,),
              Padding(
                padding:  EdgeInsets.only(left: 16.h),
                child: ListTile(
                  title: Text("+8801774452302",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      letterSpacing: 2,
                      color: const Color(0xff000000),
                    ),
                  ),
                  leading: SvgPicture.asset(AppIcons.callIcon),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 16.h),
                child: ListTile(
                  title: Text("Store locator",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      letterSpacing: 2,
                      color: const Color(0xff000000),
                    ),
                  ),
                  leading: SvgPicture.asset(AppIcons.LocationIcon),
                ),
              ),
              SizedBox(height: 30.h,),
              Center(
                child: Image.asset(AppImages.Devider),
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.TwitterLogo, height: 24.h, width: 24.w,),
                  SizedBox(width:  30.w),
                  SvgPicture.asset(AppIcons.InstagramLogo, height: 24.h, width: 24.w,),
                  SizedBox(width:  30.w),
                  SvgPicture.asset(AppIcons.YouTubeLogo, height: 24.h, width: 24.w,)
                ],
              )

            ],
          ),
        ),
      ],
    );
  }

  Widget _kidsContent() {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              /// ================== Drawer Section: New ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "New",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionk = expandedSectionk == "New" ? "" : "New";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionk == "New"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionk == "New")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "skirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Apparel ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Apparel",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionk = expandedSectionk == "Apparel"
                            ? ""
                            : "Apparel";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionk == "Apparel"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionk == "Apparel")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Bags ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Bags",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionk = expandedSectionk == "Bags" ? "" : "Bags";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionk == "Bags"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionk == "Bags")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "handbags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "backpacks",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "tote bags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "clutch",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "crossbody",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Shoes ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Shoes",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionk = expandedSectionk == "Shoes" ? "" : "Shoes";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionk == "Shoes"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionk == "Shoes")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "blouse/shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "denim",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "outer",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "kids",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "dress",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "pants",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "skirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "knitwear",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "t-shirt",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Beauty ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Apparel",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionk = expandedSectionk == "Beauty"
                            ? ""
                            : "Beauty";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionk == "Beauty"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionk == "Beauty")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "tops",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "jackets",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "jeans",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "trousers",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "hoodies",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "blazers",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              /// ================== Drawer Section: Accessories ==================
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 40.w),
                child: ListTile(
                  title: Text(
                    "Bags",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        expandedSectionk = expandedSectionk == "Accessories" ? "" : "Accessories";
                      });
                    },
                    icon: SvgPicture.asset(
                      expandedSectionk == "Accessories"
                          ? AppIcons.Forwarddw
                          : AppIcons.Forwardup,
                    ),
                  ),
                ),
              ),
              if (expandedSectionk == "Accessories")
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 240.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "handbags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "backpacks",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "tote bags",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "clutch",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "crossbody",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

              SizedBox(height: 30.h,),
              Padding(
                padding:  EdgeInsets.only(left: 16.h),
                child: ListTile(
                  title: Text("+8801774452302",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      letterSpacing: 2,
                      color: const Color(0xff000000),
                    ),
                  ),
                  leading: SvgPicture.asset(AppIcons.callIcon),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 16.h),
                child: ListTile(
                  title: Text("Store locator",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      letterSpacing: 2,
                      color: const Color(0xff000000),
                    ),
                  ),
                  leading: SvgPicture.asset(AppIcons.LocationIcon),
                ),
              ),
              SizedBox(height: 30.h,),
              Center(
                child: Image.asset(AppImages.Devider),
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.TwitterLogo, height: 24.h, width: 24.w,),
                  SizedBox(width:  30.w),
                  SvgPicture.asset(AppIcons.InstagramLogo, height: 24.h, width: 24.w,),
                  SizedBox(width:  30.w),
                  SvgPicture.asset(AppIcons.YouTubeLogo, height: 24.h, width: 24.w,)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

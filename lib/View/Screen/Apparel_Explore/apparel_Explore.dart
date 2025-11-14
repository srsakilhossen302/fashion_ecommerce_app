import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/AppIcons/app_icons.dart';
import '../../../Utils/AppImg/app_img.dart';
import '../../../core/App_Routes/app_routes.dart';
import '../../Widgegt/Custom_Container.dart';

class ApparelExplore extends StatefulWidget {
  const ApparelExplore({super.key});

  @override
  State<ApparelExplore> createState() => _ApparelExploreState();
}

class _ApparelExploreState extends State<ApparelExplore> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(AppRoute.customDrawer);
            // scaffoldKey.currentState?.openDrawer();
          },
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 30.h),
                  child: Text(
                    "650000+ All",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      fontFamily: 'Playfair',
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.w, top: 30.h),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "New",
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontSize: 14.sp,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        SvgPicture.asset(
                          AppIcons.Polygon,
                          width: 6.w,
                          height: 6.h,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 30.h),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.ListviewIcon,
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.FilterIcon,
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            Row(
              children: [
                Container(
                  width: 95.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: Color(0xffDEDEDE)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.w, right: 10.w),
                    child: Row(
                      children: [
                        Text(
                          "Women",
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),

                        SvgPicture.asset(
                          AppIcons.CloseIcon,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 8.w),

                Container(
                  width: 116.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: Color(0xffDEDEDE)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.w, right: 10.w),
                    child: Row(
                      children: [
                        Text(
                          "All Fashion",
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        SvgPicture.asset(
                          AppIcons.CloseIcon,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Column(
                  children: [
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_0,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_1,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_2,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_3,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_4,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_5,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_6,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_7,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_8,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_9,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                  ],
                ),

                Column(
                  children: [
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_9,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_8,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_7,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_6,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_1,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_3,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_5,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_2,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_4,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                    CustomProductCard(
                      title: "21WN reversible angora cardigan",
                      image: AppImages.Rectangle344_0,
                      price: 120.0,
                      description: "reversible angora cardigan",
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60.h),

            Padding(
              padding: EdgeInsets.only(left: 75),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: selectedIndex == 0
                            ? Color(0xff000000)
                            : Color(0xff888888),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedIndex == 0
                                ? Color(0xffFFFFFF)
                                : Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 9.w),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: selectedIndex == 1
                            ? Color(0xff000000)
                            : Color(0xff888888),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedIndex == 1
                                ? Color(0xffFFFFFF)
                                : Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 9.w),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: selectedIndex == 2
                            ? Color(0xff000000)
                            : Color(0xff888888),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedIndex == 2
                                ? Color(0xffFFFFFF)
                                : Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 9.w),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: selectedIndex == 3
                            ? Color(0xff000000)
                            : Color(0xff888888),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "4",
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedIndex == 3
                                ? Color(0xffFFFFFF)
                                : Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 9.w),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 4;
                      });
                    },
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: selectedIndex == 4
                            ? Color(0xff000000)
                            : Color(0xff888888),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontSize: 16,
                            color: selectedIndex == 4
                                ? Color(0xffFFFFFF)
                                : Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 9.w),
                  IconButton(onPressed: (){},
                      icon: SvgPicture.asset(
                        AppIcons.next,
                        width: 32,
                        height: 32,))
                ],
              ),
            ),

            SizedBox(height: 60.h),
          ],
        ),
      ),
    );
  }
}

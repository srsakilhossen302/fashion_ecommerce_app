import 'package:e_commerce_fashion_app/Utils/AppIcons/app_icons.dart';
import 'package:e_commerce_fashion_app/Utils/AppImg/app_img.dart';
import 'package:e_commerce_fashion_app/core/App_Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Widgegt/Custom_Container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  int? bselectedIndex;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffoldKey,
      //drawer: CustomDrawerMenu(),
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffE7EAEF),
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
            Container(
              height: 375.h,
              width: 600.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.image15),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LUXURY",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp,
                        fontFamily: 'Playfair',
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    Text(
                      "FASHION",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24.h,
                        fontFamily: 'Playfair',
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    Text(
                      "& ACCESSORIES",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24.h,
                        fontFamily: 'Playfair',
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(height: 80.h),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 253.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Color(0xffDD8560),
                          borderRadius: BorderRadius.circular(26.r),
                        ),
                        child: Center(
                          child: Text(
                            "Explore Collection",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              fontFamily: 'Playfair',
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Center(
              child: Text(
                "New Arrival",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                  fontFamily: 'Playfair',
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 4),
            Image.asset(
              AppImages.Devider,
              width: 125.w,
              height: 10.h,
              color: Colors.black,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Text(
                    "All",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'Playfair',
                      color: selectedIndex == 0 ? Color(0xff000000) : Color(0xff888888),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Text(
                    "Apparel",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'Playfair',
                      color: selectedIndex == 1 ? Color(0xff000000) : Color(0xff888888),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Text(
                    "Dress",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'Playfair',
                      color: selectedIndex == 2 ?  Color(0xff000000) : Color(0xff888888),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  child: Text(
                    "T-shirt",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'Playfair',
                      color: selectedIndex == 3 ?  Color(0xff000000) : Color(0xff888888),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                  },
                  child: Text(
                    "Bag",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'Playfair',
                      color: selectedIndex == 4 ? Color(0xff000000) : Color(0xff888888),
                    ),
                  ),
                ),
              ],
            ),

            _buildContent(),


            SizedBox(height: 50.h),
            Image.asset(
              AppImages.Devider,
              width: 125.w,
              height: 10.h,
              color: Colors.black,
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(AppIcons.PradaLogo, height: 10.h, width: 70.w),
                SvgPicture.asset(
                  AppIcons.BurberryLogo,
                  height: 8.h,
                  width: 100.w,
                ),
                SvgPicture.asset(AppIcons.BossLogo, height: 20.h, width: 52.w),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  AppIcons.CatierLogo,
                  height: 20.h,
                  width: 73.w,
                ),
                SvgPicture.asset(AppIcons.GucciLogo, height: 15.h, width: 95.w),
                SvgPicture.asset(
                  AppIcons.TiffanyLogo,
                  height: 13.h,
                  width: 100.w,
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Image.asset(
              AppImages.Devider,
              width: 125.w,
              height: 10.h,
              color: Colors.black,
            ),
            SizedBox(height: 60.h),
            Center(
              child: Text(
                "Collections",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  fontFamily: 'Playfair',
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            Container(
              width: 375.w,
              height: 230.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.Frame2),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              width: 260.w,
              height: 296.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.image9),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 40.h, left: 85.w, right: 20.w),
                child: Column(
                  children: [
                    Text(
                      "Autumn",
                      style: TextStyle(
                        fontFamily: "Instrument Serif",
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "COLLECTION",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
            Container(
              width: 375.w,
              height: 176.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.Video),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 72.h),
            Center(
              child: Text(
                "Just for You",
                style: TextStyle(fontFamily: "Playfair", fontSize: 20.sp),
              ),
            ),
            SizedBox(height: 5.h),
            Image.asset(
              AppImages.Devider,
              width: 125.w,
              height: 10.h,
              color: Colors.black,
            ),
            SizedBox(height: 23.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle2,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle3,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle4,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle1,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle2,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle3,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle4,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle1,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.h),
            Center(
              child: Text(
                "@Trending",
                style: TextStyle(fontFamily: "Playfair", fontSize: 20.sp),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "#2021",
                  style: TextStyle(fontFamily: "Open Sans", fontSize: 12.sp),
                ),
                Text(
                  "#spring",
                  style: TextStyle(fontFamily: "Open Sans", fontSize: 12.sp),
                ),
                Text(
                  "#collection",
                  style: TextStyle(fontFamily: "Open Sans", fontSize: 12.sp),
                ),
                Text(
                  "#fall",
                  style: TextStyle(fontFamily: "Open Sans", fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "#dress",
                  style: TextStyle(fontFamily: "Open Sans", fontSize: 12.sp),
                ),
                Text(
                  "#autumncollection",
                  style: TextStyle(fontFamily: "Open Sans", fontSize: 12.sp),
                ),
                Text(
                  "#openfashion",
                  style: TextStyle(fontFamily: "Open Sans", fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(height: 28.h),
            Container(
              width: 376.w,
              height: 488.h,
              decoration: BoxDecoration(color: Color(0xffF2F2F2)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 27.h, bottom: 16.h),
                    child: Center(
                      child: SvgPicture.asset(
                        AppIcons.Applogo,
                        height: 32.h,
                        width: 78.w,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 45.w, right: 48.w),
                    child: Center(
                      child: Text(
                        "Making a luxurious lifestyle accessible "
                        "for a generous group of women is our ",
                        maxLines: 3,
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontSize: 14.sp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "daily drive.",
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h),
                  Image.asset(AppImages.Devider, width: 130.w, height: 10.h),

                  SizedBox(height: 20.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppImages.Group23,
                        width: 165.w,
                        height: 86.h,
                      ),
                      Image.asset(
                        AppImages.Group22,
                        width: 130.w,
                        height: 86.h,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(AppImages.Group6, width: 165.w, height: 81.h),
                      Image.asset(
                        AppImages.Group21,
                        width: 155.w,
                        height: 81.h,
                      ),
                    ],
                  ),
                  SizedBox(height: 33.h),
                  SvgPicture.asset(AppIcons.b_Logo, height: 40.h, width: 67.w),
                ],
              ),
            ),
            SizedBox(height: 35.h),
            Center(
              child: Text(
                "Follow Us",
                style: TextStyle(fontFamily: "Playfair", fontSize: 24.sp),
              ),
            ),
            Center(
              child: SvgPicture.asset(
                AppIcons.InstagramLogo,
                width: 22.w,
                height: 22.h,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.Group257,
                      height: 164.h,
                      width: 164.w,
                    ),
                    Image.asset(
                      AppImages.Group259,
                      height: 164.h,
                      width: 164.w,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.Group258,
                      height: 164.h,
                      width: 164.w,
                    ),
                    Image.asset(
                      AppImages.Group260,
                      height: 164.h,
                      width: 164.w,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  AppIcons.InstagramLogo,
                  width: 22.w,
                  height: 22.h,
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
                    "support@Sakil.design",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "+8801774452302",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "08:00 - 22:00 - Everyday",
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
                    "About",
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
                    "Contact",
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
                    Get.toNamed(AppRoute.blogGridView);
                  },
                  child: Text(
                    "Blog",
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
                  "Copyright © 2025 Sakil. All Rights Reserved.",
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
    );
  }
  /// ================== Change Content by Index ==================
  Widget _buildContent() {
    switch (selectedIndex) {
      case 0:
        return _allContent();
      case 1:
        return _apparelContent();
      case 2:
        return _dressContent();
      case 3:
        return _tshirtContent();
      default:
        return _bagContent();
    }
  }

  Widget _allContent(){
    return  SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle1,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle2,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle3,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle4,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.allExploreMore);
            },
            child: Container(
              height: 24.h,
              width: 110.w,
              child: Row(
                children: [
                  Text(
                    "Explore More",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _apparelContent(){
    return  SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
              Column(
                children: [
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
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.apparelExplore);
            },
            child: Container(
              height: 24.h,
              width: 110.w,
              child: Row(
                children: [
                  Text(
                    "Explore More",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _dressContent(){
    return  SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Dress5,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Dress8,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Dress4,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Dress7,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.dressExploreMore);
            },
            child: Container(
              height: 24.h,
              width: 110.w,
              child: Row(
                children: [
                  Text(
                    "Explore More",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _tshirtContent(){
    return  SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle1,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle2,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle3,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle4,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.tShirtExploreMore);
            },
            child: Container(
              height: 24.h,
              width: 110.w,
              child: Row(
                children: [
                  Text(
                    "Explore More",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _bagContent(){
    return  SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.rectangle2,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle2,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
              Column(
                children: [
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.rectangle5,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                  CustomProductCard(
                    title: "21WN reversible angora cardigan",
                    image: AppImages.Rectangle4,
                    price: 120.0,
                    description: "reversible angora cardigan",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.bagExploreMore);
            },
            child: Container(
              height: 24.h,
              width: 110.w,
              child: Row(
                children: [
                  Text(
                    "Explore More",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),

          ///sakil
        ],
      ),
    );
  }

}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kheti_shayak_my_version/functions/dots_builder.dart';
import 'package:kheti_shayak_my_version/screens/navbar/side_nav_bar.dart';
import 'package:kheti_shayak_my_version/utils/home_screen_info.dart';

import '../../model/shayak.dart';
import '../../widgets/home_page_banner.dart';
import '../../widgets/home_page_event.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //**
  int bannerDotsIndex = 0;

  int toolsIndex = 0;
  int cropsIndex = 0;
  int landIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideNavBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Kheti Shayak',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            letterSpacing: 0.8,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 159.h,
                onPageChanged: (index, reason) {
                  setState(() {
                    bannerDotsIndex = index;
                  });
                },
                enlargeFactor: 0.2,
              ),
              items: HomeScreenInfo.topImageSrc.map(
                (i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return homePageBanner(i);
                    },
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 10.h),
            dotsBuilder(5, bannerDotsIndex),
            SizedBox(height: 10.h),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tools",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffF9A826),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View more",
                      style: GoogleFonts.poppins(
                        color: const Color(0xff7B7B7B),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CarouselSlider(
              options: CarouselOptions(
                height: 147.h,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    toolsIndex = index;
                  });
                },
              ),
              items: HomeScreenInfo.toolNames.asMap().entries.map(
                (entry) {
                  int index = entry.key;
                  String eventName = entry.value;
                  String mode = HomeScreenInfo
                      .toolMode[index % HomeScreenInfo.toolMode.length];
                  String imagePath = HomeScreenInfo
                      .toolImageSrc[index % HomeScreenInfo.toolImageSrc.length];
                  double price = HomeScreenInfo
                      .toolPrice[index % HomeScreenInfo.toolPrice.length];

                  Shayak shayakEvent = Shayak(
                    mode: mode,
                    name: eventName,
                    imageSrc: imagePath,
                    price: price,
                  );

                  return Builder(
                    builder: (BuildContext context) {
                      return homePageEvent(shayakEvent);
                    },
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 10.h),
            dotsBuilder(5, toolsIndex),
            SizedBox(height: 10.h),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Crops",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffF9A826),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View more",
                      style: GoogleFonts.poppins(
                        color: const Color(0xff7B7B7B),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CarouselSlider(
              options: CarouselOptions(
                height: 147.h,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    landIndex = index;
                  });
                },
              ),
              items: HomeScreenInfo.cropsNames.asMap().entries.map(
                (entry) {
                  int index = entry.key;
                  String eventName = entry.value;
                  String mode = HomeScreenInfo
                      .cropsMode[index % HomeScreenInfo.cropsMode.length];
                  String imagePath = HomeScreenInfo.cropsImageSrc[
                      index % HomeScreenInfo.cropsImageSrc.length];
                  double price = HomeScreenInfo
                      .cropsPrice[index % HomeScreenInfo.cropsPrice.length];

                  // Create a unique Shayak instance for each event type
                  Shayak shayakEvent = Shayak(
                    mode: mode,
                    name: eventName,
                    imageSrc: imagePath,
                    price: price,
                  );

                  return Builder(
                    builder: (BuildContext context) {
                      return homePageEvent(shayakEvent);
                    },
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 10.h),
            dotsBuilder(5, landIndex),
            SizedBox(height: 10.h),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Land",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffF9A826),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "View more",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff7B7B7B),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CarouselSlider(
              options: CarouselOptions(
                height: 147.h,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    cropsIndex = index;
                  });
                },
              ),
              items: HomeScreenInfo.landNames.asMap().entries.map(
                (entry) {
                  int index = entry.key;
                  String eventName = entry.value;
                  String mode = HomeScreenInfo
                      .landMode[index % HomeScreenInfo.landMode.length];
                  String imagePath = HomeScreenInfo
                      .landImageSrc[index % HomeScreenInfo.landImageSrc.length];
                  double price = HomeScreenInfo
                      .landPrice[index % HomeScreenInfo.landPrice.length];

                  Shayak shayakEvent = Shayak(
                    mode: mode,
                    name: eventName,
                    imageSrc: imagePath,
                    price: price,
                  );

                  return Builder(
                    builder: (BuildContext context) {
                      return homePageEvent(shayakEvent);
                    },
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 10.h),
            dotsBuilder(5, cropsIndex),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

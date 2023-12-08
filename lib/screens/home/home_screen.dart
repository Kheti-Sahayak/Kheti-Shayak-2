import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kheti_shayak_my_version/screens/navbar/side_nav_bar.dart';
import 'package:kheti_shayak_my_version/utils/colors.dart';
import 'package:kheti_shayak_my_version/utils/top_image_home_screen.dart';

import '../../model/shayak.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bannerDotsIndex = 0;

  List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

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
              items: TopImageHomeScreen.topImageSrc.map(
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
              items: ["car", "bike", "truck", "cycle", "tractor"].map(
                (eventName) {
                  // Create a unique Shayak instance for each event type
                  Shayak shayakEvent = Shayak(
                    dateOfEvent: DateTime.now(),
                    mode: "Renting",
                    name: eventName,
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
              items: ["car", "bike", "truck", "cycle", "tractor"].map(
                (eventName) {
                  // Create a unique Shayak instance for each event type
                  Shayak shayakEvent = Shayak(
                    dateOfEvent: DateTime.now(),
                    mode: "Selling",
                    name: eventName,
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
              items: ["car", "bike", "truck", "cycle", "tractor"].map(
                (eventName) {
                  // Create a unique Shayak instance for each event type
                  Shayak shayakEvent = Shayak(
                    dateOfEvent: DateTime.now(),
                    mode: "Renting",
                    name: eventName,
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

  dotsBuilder(int total, int current) {
    List<Widget> widgetsInRow = [];
    for (int i = 0; i < total; i++) {
      widgetsInRow.add(
        dotBuilder(i, total, current),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgetsInRow,
    );
  }

  Widget homePageBanner(String src) {
    return Container(
      height: 150.h,
      width: 300.w,
      padding: EdgeInsets.only(top: 15.h),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(3, 4), // Shadow position
          )
        ],
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          src,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget homePageEvent(Shayak event) {
    return Container(
      height: 147.h,
      width: 330.w,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.24),
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/plant_care.jpg',
              height: 127.h,
              width: 160,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                event.name,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15.0,
                  letterSpacing: 0.6,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffE1E1E1),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        event.mode,
                        style: GoogleFonts.poppins(
                          color: event.mode == "Renting"
                              ? Colors.greenAccent
                              : event.mode == "Selling"
                                  ? const Color(0xffFADA44)
                                  : const Color(0xffFF6262),
                          fontSize: 15.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    SizedBox(width: 18.w),
                    Container(
                      height: 48.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFE87B),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            event.dateOfEvent.day.toString(),
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            months[event.dateOfEvent.month - 1],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget dotBuilder(int current, int total, int selected) {
    return Container(
      height: 7,
      width: 7,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: current == selected
            ? const Color(0xffF9A826)
            : const Color(0xffD9D9D9),
      ),
    );
  }
}

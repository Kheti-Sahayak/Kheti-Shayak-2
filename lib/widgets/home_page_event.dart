import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/shayak.dart';
import '../utils/colors.dart';

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
          color: Colors.white70.withOpacity(0.24),
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
            event.imageSrc!,
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
                                ? const Color(0xffdfc107)
                                : const Color(0xffFF6262),
                        fontSize: 15.0,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 47.h,
                    width: 47.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFE87B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '₹',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              event.price.toString(),
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

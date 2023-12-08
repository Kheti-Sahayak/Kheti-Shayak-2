import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget homePageBanner(String src) {
  return Container(
    height: 150.h,
    width: 300.w,
    padding: EdgeInsets.only(top: 15.h),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
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
        fit: BoxFit.cover,
      ),
    ),
  );
}

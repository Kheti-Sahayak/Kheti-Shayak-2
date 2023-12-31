import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackBar(String title, String message) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: const Color(0xff252526),
    colorText: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    snackStyle: SnackStyle.GROUNDED,
    margin: const EdgeInsets.all(0.0),
  );
}

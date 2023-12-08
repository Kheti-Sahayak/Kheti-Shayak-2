import 'package:flutter/material.dart';

Widget dotUi(int current, int total, int selected) {
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

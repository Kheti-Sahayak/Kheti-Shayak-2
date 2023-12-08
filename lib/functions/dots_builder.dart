import 'package:flutter/material.dart';
import 'package:kheti_shayak_my_version/functions/dot_ui.dart';

dotsBuilder(int total, int current) {
  List<Widget> widgetsInRow = [];
  for (int i = 0; i < total; i++) {
    widgetsInRow.add(
      dotUi(i, total, current),
    );
  }
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: widgetsInRow,
  );
}

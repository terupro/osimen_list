import 'package:flutter/material.dart';

Widget settingWidget(String label, Widget child) {
  return Row(
    children: [
      SizedBox(width: 80, child: Text(label)),
      Expanded(child: child),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

Widget bloodGroupCustomContainer({
  required double height,
  required double width,
}) {
  return SizedBox(
    width: width * 0.18,
    height: height * 0.12,
    child: Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: ColorManager.primaryColor),
        ),
      ),
    ),
  );
}

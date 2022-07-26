import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

Widget smallBloodGroupContainer({
  required double height,
  required double width,
  required String bloodGroup,
}) {
  return Container(
    height: height * 0.05,
    width: width * 0.07,
    decoration: BoxDecoration(
      color: ColorManager.primaryColor,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Center(
      child: Text(
        bloodGroup,
        style: const TextStyle(
          color: ColorManager.white,
          fontSize: 18,
        ),
      ),
    ),
  );
}

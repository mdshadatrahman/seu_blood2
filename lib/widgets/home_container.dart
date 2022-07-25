import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
Widget homeContainer({
  required double height,
  required double width,
  required String text,
  required String imagePath,
  String subTitle = '',
}) {
  return Container(
    height: height * 0.30,
    width: width * 0.35,
    decoration: BoxDecoration(
      color: ColorManager.white,
      borderRadius: BorderRadius.circular(40),
      boxShadow: const [
        BoxShadow(
          color: ColorManager.shadow,
          blurRadius: 10,
          spreadRadius: 0.2,
          offset: Offset(0, 10),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.02),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorManager.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: height * 0.03),
        SvgPicture.asset(imagePath),
        SizedBox(height: height * 0.035),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorManager.shadow,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}

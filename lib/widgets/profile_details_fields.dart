import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

Padding profileDetailsFields({
  required double height,
  required double width,
  required String text,
}) {
  return Padding(
    padding: EdgeInsets.only(top: height * 0.02),
    child: Container(
      height: 60,
      width: width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: ColorManager.shadow,
          width: 2,
        ),
      ),
      child:  TextField(
        readOnly: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle:const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: ColorManager.shadow,
          ),
        ),
      ),
    ),
  );
}
import 'package:flutter/material.dart';

GestureDetector buildGestureDetector({
  required double height,
  required double width,
  required Color color,
  required Color textColor,
  required String text,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: height * 0.07,
      width: width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

Widget iconTextFormField(
    {required double width, required IconData icon, required String text}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: width * 0.02),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: ColorManager.blueBorder,
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              readOnly: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: text,
                hintStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

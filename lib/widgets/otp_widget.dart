import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

Widget textFieldOTP(
    {required bool first, last, required TextEditingController controller_}) {
  return Builder(builder: (context) {
    return SizedBox(
      height: 85,
      // width: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          controller: controller_,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: ColorManager.black,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2,
                color: ColorManager.shadow,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2,
                color: ColorManager.primaryColor,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  });
}

import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.89,
      height: height * 0.08,
      decoration: const BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Center(
        child: InkWell(
          onTap: onTap,
          child: Text(
            StringManager.submit,
            style: const TextStyle(
              color: ColorManager.white,
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

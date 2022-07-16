import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    required this.hintText,
    required this.isPassword,
    this.controller,
    required this.keyboardType,
  }) : super(key: key);

  final double height;
  final double width;
  final String title;
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.01,
        left: width * 0.05,
        right: width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.00),
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hintText.toUpperCase(),
                hintStyle: const TextStyle(
                  fontSize: 12,
                ),
              ),
              obscureText: isPassword,
            ),
          ),
        ],
      ),
    );
  }
}

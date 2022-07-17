import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';


class CustomInputField extends StatefulWidget {
  const CustomInputField({
    Key? key,
    required this.textInputType,
    required this.label,
    required this.hintText,
    this.isPassword = false,}) : super(key: key);

  final TextInputType textInputType;
  final String label;
  final String hintText;
  final bool isPassword;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            color: ColorManager.primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          textAlign: TextAlign.center,
          obscureText: showPassword,
          keyboardType: widget.textInputType,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: widget.isPassword
                ? const Icon(Icons.lock_outline, color: ColorManager.shadow)
                : null,
            suffixIcon: widget.isPassword
                ? InkWell(
              onTap: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              child: Icon(
                showPassword? Icons.visibility : Icons.visibility_off,
                color: ColorManager.shadow,
              ),
            )
                : null,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.width,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.5,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}

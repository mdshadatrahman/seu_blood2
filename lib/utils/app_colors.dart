import 'package:flutter/material.dart';

class ColorManager {
  static const primaryColor = Color(0xffEB3738);
  static const white = Color(0xffffffff);
  static const shadow = Color(0xff7B7A72);
  static const black = Colors.black;
  static const background = Color(0xffEFEFEF);
  static const blueGrey = Color(0xff8E9F9C);

  static const MaterialColor materialPrimaryColor = MaterialColor(
    0xffEB3738,
  <int, Color>{
  50: const Color(0xffce5641 ),//10%
  100: const Color(0xffb74c3a),//20%
  200: const Color(0xffa04332),//30%
  300: const Color(0xff89392b),//40%
  400: const Color(0xff733024),//50%
  500: const Color(0xff5c261d),//60%
  600: const Color(0xff451c16),//70%
  700: const Color(0xff2e130e),//80%
  800: const Color(0xff170907),//90%
  900: const Color(0xff000000),//100%
  },
  );
}

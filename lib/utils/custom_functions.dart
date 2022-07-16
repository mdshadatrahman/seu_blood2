import 'dart:async';

import 'package:flutter/material.dart';


class FunctionManager {

  static void splashTimer(BuildContext context, int seconds, Widget pageName) {
    Timer(Duration(seconds: seconds), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => pageName,
        ),
      );
    });
  }
}

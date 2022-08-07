import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seu_blood_2/pages/splash/splash_screen.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SEU Blood Bank',
      theme: ThemeData(
        primaryColor: ColorManager.primaryColor,
        primarySwatch: ColorManager.materialPrimaryColor,
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
    );
  }
}
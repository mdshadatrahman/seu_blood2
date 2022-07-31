import 'package:flutter/material.dart';
import 'package:seu_blood_2/pages/auth/login_screen.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import 'package:seu_blood_2/utils/custom_functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    FunctionManager.splashTimer(context, 1, const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.3,
              width: height * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssetManager.seuBloodIcon,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Text(
              StringManager.bloodCommunity.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

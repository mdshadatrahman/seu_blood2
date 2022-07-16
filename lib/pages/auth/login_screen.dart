import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

late double height;
late double width;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: height,
              width: width,
              child: Column(
                children: [
                  //Red container
                  Container(
                    height: height * 0.33,
                    width: double.infinity,
                    color: ColorManager.primaryColor,
                    child: SafeArea(
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.1,
                            child: Image.asset(
                              AssetManager.seuBloodIcon,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            StringManager.bloodCommunity.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //The white container which is under the red container
            Positioned(
              top: height * 0.22,
              left: width * 0.1,
              child: Container(
                height: height * 0.45,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 0),
                      spreadRadius: 0.5,
                      blurRadius: 8,
                      color: ColorManager.shadow,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.02,
                      ),
                      child: Text(
                        StringManager.loginText.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomTextFormField(
                      height: height,
                      width: width,
                      title: StringManager.emailPhoneId,
                      hintText: StringManager.typeYourEmailPhoneID,
                      isPassword: false,
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      height: height,
                      width: width,
                      title: StringManager.passwordText,
                      hintText: StringManager.typeYourPassword,
                      isPassword: true,
                    ),
                  ],
                ),
              ),
            ),

            //Login and register button
            Positioned(
              top: height * 0.64,
              left: width * 0.255,
              child: Column(
                children: [
                  CustomElevatedButton(
                    text: StringManager.loginText,
                    width: width,
                  ),
                  CustomElevatedButton(
                    text: StringManager.registerText,
                    width: width,
                  ),
                  SizedBox(height:  height * 0.1),
                  CustomElevatedButton(
                    text: StringManager.forgotPassText,
                    width: width,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

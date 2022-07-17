import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/widgets/custom_input_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                Center(
                  child: Text(
                    StringManager.signUpInfo,
                    style: const TextStyle(
                      color: ColorManager.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                CustomInputField(
                  hintText: StringManager.writeYourName,
                  label: StringManager.name,
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: height * 0.025),
                CustomInputField(
                  hintText: StringManager.exampleEmailAddress,
                  label: StringManager.emailAddress,
                  textInputType: TextInputType.emailAddress,

                ),
                SizedBox(height: height * 0.025),
                CustomInputField(
                  hintText: StringManager.phoneNumberHint,
                  label: StringManager.phoneNumber,
                  textInputType: TextInputType.phone,
                ),
                SizedBox(height: height * 0.025),
                CustomInputField(
                  hintText: StringManager.enterPasswordHint,
                  label: StringManager.enterPassword,
                  textInputType: TextInputType.text,
                  isPassword: true,
                ),
                SizedBox(height: height * 0.025),
                CustomInputField(
                  hintText: StringManager.reEnterPasswordHint,
                  label: StringManager.reEnterPassword,
                  textInputType: TextInputType.text,
                  isPassword: true,
                ),
                SizedBox(height: height * 0.025),
                CustomInputField(
                  hintText: StringManager.selectBloodGroup,
                  label: StringManager.bloodGroup,
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/widgets/custom_dropdown_button.dart';
import 'package:seu_blood_2/widgets/custom_input_field.dart';
import 'package:seu_blood_2/widgets/custom_submit_button.dart';

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

                //Blood group dropdown
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringManager.bloodGroup,
                      style: const TextStyle(
                        color: ColorManager.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: height * 0.08,
                      width: width * 0.89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorManager.shadow),
                      ),
                      child: const Center(
                        child: CustomDropDownButton(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),

                CustomSubmitButton( onTap: (){},),

                SizedBox(height: height * 0.05),
                InkWell(
                  onTap: (){},
                  child: Text(
                    StringManager.alreadyAMember,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorManager.blueGrey,
                    ),
                  ),
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

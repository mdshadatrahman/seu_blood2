import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import 'package:seu_blood_2/widgets/otp_widget.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);
  final String phoneNumber;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

late double height;
late double width;

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController otp_1 = TextEditingController();
  TextEditingController otp_2 = TextEditingController();
  TextEditingController otp_3 = TextEditingController();
  TextEditingController otp_4 = TextEditingController();

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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: width * 0.02,
                                  top: height * 0.02,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: ColorManager.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
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
                          )
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
                        StringManager.phoneVerification,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "${StringManager.phoneVerificationLongText} ${widget.phoneNumber}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ColorManager.shadow,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: textFieldOTP(
                              first: true,
                              last: false,
                              controller_: otp_1,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: textFieldOTP(
                              first: false,
                              last: false,
                              controller_: otp_2,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: textFieldOTP(
                              first: false,
                              last: false,
                              controller_: otp_3,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: textFieldOTP(
                              first: false,
                              last: true,
                              controller_: otp_4,
                            ),
                          ),
                        ],
                      ),
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
                    text: StringManager.verify,
                    width: width,
                    onTap: () {},
                  ),
                ],
              ),
            ),

            //Didn't get otp
            Positioned(
              top: height * 0.9,
              left: width * 0.3,
              child: Row(
                children: [
                  Text(
                    StringManager.didNotGetOtp,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 1),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      StringManager.resend,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: ColorManager.black,
                      ),
                    ),
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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seu_blood_2/pages/auth/otp_screen.dart';
import 'package:seu_blood_2/pages/auth/phone_number_screen.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  bool showOTP = false;
  String phoneNumber = "";

  TextEditingController phoneNumberController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void verifyPhoneNumber(String phoneNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      timeout: const Duration(minutes: 2),
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPScreen(phoneNumber: phoneNumber),
            ),
          );
        });
        debugPrint("Verified");
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          debugPrint('The provided phone number is not valid.');
        } else {
          debugPrint(e.toString());
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        String smsCode = 'xxxxxx';
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);
        await FirebaseAuth.instance.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: showOTP
          ? SizedBox(
              height: height,
              width: width,
              child: OTPScreen(phoneNumber: phoneNumber),
            )
          : SizedBox(
              height: height,
              width: width,
              child: phoneNumberScreen(
                context,
                height,
                width,
                phoneNumberController,
              ),
            ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:seu_blood_2/pages/auth/otp_screen.dart';
import 'package:seu_blood_2/pages/auth/phone_number_screen.dart';
import 'package:seu_blood_2/pages/auth/registration_screen.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  bool showOTP = false;
  String verificationID = '';
  String phoneNumber = "";

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController otp_1 = TextEditingController();
  TextEditingController otp_2 = TextEditingController();
  TextEditingController otp_3 = TextEditingController();
  TextEditingController otp_4 = TextEditingController();
  TextEditingController otp_5 = TextEditingController();
  TextEditingController otp_6 = TextEditingController();

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
              builder: (context) => const RegisterScreen(),
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
        showOTP = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void confirmOTP(String smsCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationID,
      smsCode: smsCode,
    );

    await auth.signInWithCredential(credential).then((value) {
      debugPrint("Phone Number Confirmed");
      Fluttertoast.showToast(
        msg: "You are logged in successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: showOTP
          ? SizedBox(
              height: height,
              width: width,
              child: OTPScreen(
                context: context,
                otp_1: otp_1,
                otp_2: otp_2,
                otp_3: otp_3,
                otp_4: otp_4,
                otp_5: otp_5,
                otp_6: otp_6,
                phoneNumber: phoneNumber,
                height: height,
                width: width,
                onTap: () {
                  confirmOTP(otp_1.text.toString() +
                      otp_2.text.toString() +
                      otp_3.text.toString() +
                      otp_4.text.toString() +
                      otp_5.text.toString() +
                      otp_6.text.toString());
                },
              ),
            )
          : SizedBox(
              height: height,
              width: width,
              child: phoneNumberScreen(
                context,
                height,
                width,
                phoneNumberController,
                () => verifyPhoneNumber(phoneNumberController.text.toString()),
              ),
            ),
    );
  }
}

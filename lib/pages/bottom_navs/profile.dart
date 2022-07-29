import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import 'package:seu_blood_2/widgets/icon_text_form_field.dart';
import 'package:seu_blood_2/widgets/rounded_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: ColorManager.black),
          onPressed: () {},
        ),
        title: const Text(
          "Md. Shabab Rahman",
          style: TextStyle(
            color: ColorManager.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: ColorManager.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.01),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02, vertical: height * 0.01),
                  child: Container(
                    height: height * 0.25,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: const DecorationImage(
                        image: AssetImage(AssetManager.coverPhotoPlaceHolder),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.13,
                  left: width * 0.3,
                  child: Container(
                    height: width * 0.4,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image: const DecorationImage(
                        image: AssetImage(AssetManager.profilePicPlaceholder),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.05),
            //Profile name
            const Text(
              "MD. SHABAB RAHMAN",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),

            //Details Section
            SizedBox(height: height * 0.02),
            iconTextFormField(
              width: width,
              icon: Icons.location_on_outlined,
              text: "Ulon, Hatirjheel, Dhaka",
            ),
            iconTextFormField(
              width: width,
              icon: Icons.bloodtype_sharp,
              text: "B+",
            ),
            iconTextFormField(
              width: width,
              icon: Icons.calendar_today_outlined,
              text: "14-01-1998",
            ),
            iconTextFormField(
              width: width,
              icon: Icons.subject,
              text: "Architecture",
            ),
            iconTextFormField(
              width: width,
              icon: Icons.call,
              text: "+8801704050149",
            ),
            iconTextFormField(
              width: width,
              icon: Icons.email_outlined,
              text: "2019100600010@seu.edu.bd",
            ),

            //Bottom Two Buttons
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildGestureDetector(
                    color: ColorManager.primaryColor,
                    width: width,
                    height: height,
                    text: StringManager.bloodRequest,
                    textColor: ColorManager.white,
                  ),
                  buildGestureDetector(
                    color: ColorManager.blueBorder,
                    width: width,
                    height: height,
                    text: StringManager.donationHistory,
                    textColor: ColorManager.white,
                  ),
                ],
              ),
            ),

            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}

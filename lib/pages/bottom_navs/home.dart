import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import 'package:seu_blood_2/widgets/home_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 40,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Container(
                  color: ColorManager.primaryColor,
                  child: const Center(
                    child: Text(
                      'Hello Shabab',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  decoration: const BoxDecoration(
                    color: ColorManager.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: height * 0.75,
                )
              ],
            ),
            Positioned(
              top: height * 0.15,
              child: SizedBox(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    homeContainer(
                      width: width,
                      height: height,
                      imagePath: AssetManager.bPositiveBigIcon,
                      text: StringManager.yourBloodGroup,
                    ),
                    const SizedBox(width: 30),
                    homeContainer(
                      text: StringManager.yourStatus,
                      imagePath: AssetManager.statusOkIcon,
                      height: height,
                      width: width,
                      subTitle: StringManager.youCanDonate,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:seu_blood_2/pages/donor/search_donor.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/widgets/blood_group_container.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                  height: height * 0.28,
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
              top: height * 0.18,
              child: SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    StringManager.search,
                    style: const TextStyle(
                      color: ColorManager.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.35,
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        bloodGroupCustomContainer(width: width, height: height),
                        bloodGroupCustomContainer(width: width, height: height),
                        bloodGroupCustomContainer(width: width, height: height),
                        bloodGroupCustomContainer(width: width, height: height),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        bloodGroupCustomContainer(width: width, height: height),
                        bloodGroupCustomContainer(width: width, height: height),
                        bloodGroupCustomContainer(width: width, height: height),
                        bloodGroupCustomContainer(width: width, height: height),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.65,
              left: width * 0.15,
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchDonor(),
                      ),
                    );
                  },
                  child: Container(
                    height: height * 0.08,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                      color: ColorManager.primaryColor,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                          color: ColorManager.shadow,
                          spreadRadius: 0.2,
                          blurRadius: 5,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        StringManager.search,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

class SearchDonor extends StatefulWidget {
  const SearchDonor({Key? key}) : super(key: key);

  @override
  State<SearchDonor> createState() => _SearchDonorState();
}

class _SearchDonorState extends State<SearchDonor> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primaryColor,
        title: const Text(
          'Donor (B+)',
        ),
      ),
      body: ListView.builder(
        itemCount: 13,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: width * 0.02,
              top: height * 0.02,
              right: height * 0.02,
            ),
            child: Container(
              height: height * 0.2,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorManager.primaryColor),
                boxShadow: const [
                  BoxShadow(
                    color: ColorManager.shadow,
                    offset: Offset(0, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

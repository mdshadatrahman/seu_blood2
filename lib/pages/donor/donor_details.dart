import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import 'package:seu_blood_2/widgets/profile_details_fields.dart';
import 'package:seu_blood_2/widgets/small_blood_group_container.dart';

class DonorDetails extends StatelessWidget {
  const DonorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(StringManager.donorDetails),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              //Profile Picture
              Container(
                height: width * 0.35,
                width: width * 0.35,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AssetManager.defaultProfilePicture),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(500)),
                  border: Border.all(
                    color: ColorManager.primaryColor,
                    width: 4,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //Name
              Text(
                'Md. shabab rahman'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 2,
                width: width * 0.85,
                color: ColorManager.shadow,
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: width * 0.15,
                child: smallBloodGroupContainer(
                  height: height,
                  width: width,
                  bloodGroup: 'B+',
                ),
              ),
              const SizedBox(height: 5),

              profileDetailsFields(text: 'Department', height: height, width: width),
              profileDetailsFields(text: 'Address', height: height, width: width),
              profileDetailsFields(text: 'Contact No.', height: height, width: width),
              profileDetailsFields(text: 'Last Donation Date', height: height, width: width),

              //Call Button
              SizedBox(height: height * 0.03),
              SizedBox(
                width: width * 0.4,
                height: height * 0.07,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("CALL"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

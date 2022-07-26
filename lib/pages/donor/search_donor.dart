import 'package:flutter/material.dart';
import 'package:seu_blood_2/pages/donor/donor_details.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import 'package:seu_blood_2/widgets/small_blood_group_container.dart';

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
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DonorDetails(),
                ),
              );
            },
            child: Padding(
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
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    //Profile Image
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: height * 0.06,
                      backgroundImage:
                          const AssetImage(AssetManager.defaultProfilePicture),
                    ),
                    const SizedBox(width: 5),
                    //Address
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.01),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: width * 0.03),
                            child: Text(
                              'MD. Shabab rahman'.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringManager.location,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'South Ulon, \nHatirjheel, Dhaka',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringManager.lastDonationDate,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                '02/12/2022',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //group and next icon button
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        smallBloodGroupContainer(height: height, width: width, bloodGroup: 'B+'),
                        SizedBox(height: height * 0.02),
                        const Icon(
                          Icons.arrow_forward_sharp,
                          color: ColorManager.primaryColor,
                          size: 40,
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}

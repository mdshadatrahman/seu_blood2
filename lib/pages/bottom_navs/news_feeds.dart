import 'package:flutter/material.dart';
import 'package:seu_blood_2/models/blood_requests_model.dart';
import 'package:seu_blood_2/pages/request/blood_request_detail.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/utils/asset_manager.dart';
import 'package:seu_blood_2/widgets/blood_requests_container.dart';

class NewsFeedsScreen extends StatefulWidget {
  const NewsFeedsScreen({Key? key}) : super(key: key);

  @override
  State<NewsFeedsScreen> createState() => _NewsFeedsScreenState();
}

List<BloodRequests> bloodRequestsList = [
  BloodRequests(
    name: 'Md. Shabab Rahman',
    image: AssetManager.profilePicPlaceholder,
    text: 'I need B+ blood emergency',
    isUrgent: true,
  ),
  BloodRequests(
    name: 'Monirrujjaman',
    image: AssetManager.profilePicPlaceholder,
    text: 'I need B+ blood emergency',
    isUrgent: false,
  ),
  BloodRequests(
    name: 'Afrina khan masrur',
    image: AssetManager.profilePicPlaceholder,
    text: 'I need B+ blood emergency',
    isUrgent: false,
  ),
  BloodRequests(
    name: 'Md. Shafiqul Islam',
    image: AssetManager.profilePicPlaceholder,
    text: 'I need B+ blood emergency',
    isUrgent: false,
  ),
];

class _NewsFeedsScreenState extends State<NewsFeedsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          StringManager.bloodRequest.toUpperCase(),
          style: const TextStyle(
              color: ColorManager.black, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: bloodRequestsList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BloodRequestDetailsScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: bloodRequestsContainer(
                image: bloodRequestsList[index].image,
                width: width,
                height: height,
                text: bloodRequestsList[index].text,
                username: bloodRequestsList[index].name,
                isUrgent: bloodRequestsList[index].isUrgent,
              ),
            ),
          );
        },
      ),
    );
  }
}

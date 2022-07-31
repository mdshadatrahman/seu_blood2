import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_list.dart';
import 'package:seu_blood_2/utils/app_strings.dart';
import 'package:seu_blood_2/widgets/custom_dropdown_button.dart';
import 'package:seu_blood_2/widgets/date_time_picker.dart';

class BloodRequestScreen extends StatefulWidget {
  const BloodRequestScreen({Key? key}) : super(key: key);

  @override
  State<BloodRequestScreen> createState() => _BloodRequestScreenState();
}

class _BloodRequestScreenState extends State<BloodRequestScreen> {
  String dropDownValue = StringManager.selectBloodType;
  List<String> item = ListManager.bloodTypeDropDownItems;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: SafeArea(
        child: Center(
          child: Container(
            height: height * 0.85,
            width: width * 0.95,
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(30)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.01),
                  Text(
                    StringManager.request.toUpperCase(),
                    style: const TextStyle(
                      color: ColorManager.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 24,
                    ),
                  ),

                  //Time and date section
                  SizedBox(height: height * 0.02),
                  Text(
                    StringManager.time,
                    style: const TextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: height * 0.065,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorManager.shadow,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: BasicDateTimeField(),
                    ),
                  ),

                  //blood group
                  SizedBox(height: height * 0.02),
                  Text(
                    StringManager.bloodGroup1,
                    style: const TextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: height * 0.065,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorManager.shadow,
                        width: 1,
                      ),
                    ),
                    child: const Center(
                      child: CustomDropDownButton(),
                    ),
                  ),


                  //bag you need
                  SizedBox(height: height * 0.02),
                  Text(
                    StringManager.bagYouNeed,
                    style: const TextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: height * 0.065,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorManager.shadow,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),

                  //Type of Blood
                  SizedBox(height: height * 0.02),
                  Text(
                    StringManager.bloodType,
                    style: const TextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: height * 0.065,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorManager.shadow,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DropdownButton<String>(
                            alignment: Alignment.center,
                            icon: Container(),
                            value: dropDownValue,
                            items: item.map<DropdownMenuItem<String>>((String items) {
                              return DropdownMenuItem<String>(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropDownValue = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Hospital name
                  SizedBox(height: height * 0.02),
                  Text(
                    StringManager.hospitalName,
                    style: const TextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: height * 0.065,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorManager.shadow,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),

                  //Contact Number
                  SizedBox(height: height * 0.02),
                  Text(
                    StringManager.contactNumber,
                    style: const TextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: height * 0.065,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorManager.shadow,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),

                  //Post Button
                  SizedBox(height: height * 0.02),
                  GestureDetector(
                    child: Container(
                      height: height * 0.07,
                      width:  width * 0.3,
                      decoration: BoxDecoration(
                        color: ColorManager.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Post',
                          style: TextStyle(
                            color: ColorManager.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

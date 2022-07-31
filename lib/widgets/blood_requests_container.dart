import 'package:flutter/material.dart';
import 'package:seu_blood_2/utils/app_colors.dart';

Container bloodRequestsContainer({
  required double height,
  required double width,
  required String username,
  required String text,
  required String image,
  bool isUrgent = true,
}) {
  return Container(
    height: height * 0.25,
    width: width * 0.95,
    decoration: BoxDecoration(
        color: ColorManager.white, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        //Name and profile
        SizedBox(height: height * 0.015),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                username,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                height: width * 0.2,
                width: width * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.75,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              isUrgent
                  ? Container(
                width: width * 0.15,
                height: height * 0.03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorManager.primaryColor,
                ),
                child: const Center(
                  child: Text(
                    'Urgent',
                    style: TextStyle(
                      color: ColorManager.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
                  : Container(),
            ],
          ),
        ),
      ],
    ),
  );
}

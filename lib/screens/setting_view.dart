// ignore_for_file: deprecated_member_use

import 'package:calculator/screens/privacy_policy.dart';
import 'package:calculator/screens/tearms_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/colors.dart';
import '../helpers/common_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CommonWidget().poppinsText(
                  text: "Settings",
                  textSize: 18.0,
                  textColor: AppColors.redcolor,
                  textWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CommonWidget().poppinsText(
                  text: "General Settings",
                  textSize: 12.0,
                  textWeight: FontWeight.w700,
                  textColor: AppColors.softtextcolor),
            ),
            SizedBox(height: 10),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.softtextcolor.withOpacity(0.2),
                        blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      ForgetPasswordBottomSheet.buildBottomSheet(context);
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonWidget().poppinsText(
                              text: "Language",
                              textSize: 14.0,
                              textWeight: FontWeight.w700,
                              textColor: AppColors.blackcolor),
                          CommonWidget().poppinsText(
                              text: "English",
                              textSize: 12.0,
                              textWeight: FontWeight.w700,
                              textColor: AppColors.softtextcolor),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Divider(),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidget().poppinsText(
                          text: "Theme",
                          textSize: 14.0,
                          textWeight: FontWeight.w700,
                          textColor: AppColors.blackcolor),
                      CommonWidget().poppinsText(
                          text: "Light",
                          textSize: 12.0,
                          textWeight: FontWeight.w700,
                          textColor: AppColors.softtextcolor),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CommonWidget().poppinsText(
                  text: "Support",
                  textSize: 12.0,
                  textWeight: FontWeight.w700,
                  textColor: AppColors.softtextcolor),
            ),
            SizedBox(height: 10),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.softtextcolor.withOpacity(0.2),
                        blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(TearmsServices());
                    },
                    child: CommonWidget().poppinsText(
                        text: "Terms Of Service",
                        textSize: 14.0,
                        textWeight: FontWeight.w700,
                        textColor: AppColors.blackcolor),
                  ),
                  SizedBox(height: 5),
                  Divider(),
                  SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      Get.to(PrivacyPolicy());
                    },
                    child: CommonWidget().poppinsText(
                        text: "Privacy Policy",
                        textSize: 14.0,
                        textWeight: FontWeight.w700,
                        textColor: AppColors.blackcolor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

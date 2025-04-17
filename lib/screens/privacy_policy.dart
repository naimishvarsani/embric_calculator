import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/colors.dart';
import '../helpers/common_widget.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColors.whitecolor,
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      AppColors.softtextcolor.withOpacity(.2),
                                  blurRadius: 5)
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(width: 10),
                    CommonWidget().poppinsText(
                        text: "Privacy Policy",
                        textSize: 18.0,
                        textWeight: FontWeight.w700),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Container(
                  width: Get.width * 0.9,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.whitecolor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.softtextcolor.withOpacity(.2),
                            blurRadius: 5)
                      ]),
                  child: CommonWidget().poppinsText(
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      textSize: 15.0,
                      textWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

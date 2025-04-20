import 'package:calculator/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/common_widget.dart';

class AddDesignView extends StatelessWidget {
  const AddDesignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        title: CommonWidget().poppinsText(
            text: "Add Design",
            textSize: 18.0,
            textColor: AppColors.redcolor,
            textWeight: FontWeight.w700),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: Container(
                  // height: 70,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonWidget().poppinsText(
                                text: "Design No:",
                                textSize: 12.0,
                                textWeight: FontWeight.w500),
                            TextFormField(
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "00.00",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.softtextcolor
                                          .withOpacity(.5))),
                              // controller: addmoneycontroller,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: AppColors.softtextcolor,
                      ),
                      SizedBox(
                        width: Get.width * 0.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonWidget().poppinsText(
                                text: "Design Name:",
                                textSize: 12.0,
                                textWeight: FontWeight.w500),
                            TextFormField(
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "00.00",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.softtextcolor
                                          .withOpacity(.5))),
                              // controller: addmoneycontroller,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 50,
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.redcolor),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud_upload_outlined,
                      color: AppColors.redcolor,
                    ),
                    SizedBox(width: 10),
                    CommonWidget().poppinsText(
                        text: "Upload Design Image",
                        textSize: 12.0,
                        textWeight: FontWeight.w400),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: GridView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.softtextcolor.withOpacity(.2),
                                blurRadius: 5)
                          ],
                          color: AppColors.whitecolor,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonWidget().poppinsText(
                          text: "Total  Stitches:",
                          textSize: 12.0,
                          textWeight: FontWeight.w500),
                      CommonWidget().poppinsText(
                          text: "150.0",
                          textWeight: FontWeight.bold,
                          textColor: AppColors.blackcolor,
                          textSize: 30.0),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: Get.width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2),
                              ),
                              child: Center(
                                  child: CommonWidget().poppinsText(
                                      text: "CANCEL",
                                      textSize: 14.0,
                                      textWeight: FontWeight.w700)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(AddDesignView());
                            },
                            child: Container(
                              height: 40,
                              width: Get.width * 0.35,
                              decoration: BoxDecoration(
                                color: AppColors.redcolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: CommonWidget().poppinsText(
                                      text: "SAVE",
                                      textColor: AppColors.whitecolor,
                                      textSize: 14.0,
                                      textWeight: FontWeight.w700)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

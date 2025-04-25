// ignore_for_file: deprecated_member_use

import 'package:calculator/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/common_widget.dart';

class DesignDetailView extends StatelessWidget {
  const DesignDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: AppColors.bgcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: Get.height * 0.5,
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.softtextcolor.withOpacity(.2),
                          blurRadius: 5)
                    ],
                    color: AppColors.whitecolor,
                    borderRadius: BorderRadius.circular(15)),
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
            SizedBox(height: 15),
            Container(
              width: Get.width * 0.9,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.softtextcolor.withOpacity(.2),
                        blurRadius: 5)
                  ],
                  color: AppColors.whitecolor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonWidget().poppinsText(
                      text: "#SP52146",
                      textSize: 10.0,
                      textColor: AppColors.softtextcolor,
                      textWeight: FontWeight.w700),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonWidget().poppinsText(
                          text: "Mountain Peak",
                          textSize: 18.0,
                          textColor: AppColors.blackcolor,
                          textWeight: FontWeight.w700),
                      CommonWidget().poppinsText(
                          text: "₹999",
                          textSize: 16.0,
                          textColor: AppColors.blackcolor,
                          textWeight: FontWeight.w700),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Stitch: ',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        TextSpan(
                          text: '1250',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  CommonWidget().poppinsText(
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      textSize: 12.0,
                      textMaxline: 5,
                      textOverFlow: TextOverflow.ellipsis,
                      textColor: AppColors.softtextcolor,
                      textWeight: FontWeight.w400),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use, prefer_interpolation_to_compose_strings

import 'package:calculator/helpers/colors.dart';
import 'package:calculator/helpers/common_widget.dart';
import 'package:calculator/helpers/images.dart';
import 'package:calculator/screens/design_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesignListview extends StatelessWidget {
  const DesignListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonWidget().poppinsText(
                      text: "Designs",
                      textSize: 18.0,
                      textColor: AppColors.redcolor,
                      textWeight: FontWeight.w700),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: AppColors.whitecolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(AppImage.icon + "Search.png"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(DesignDetailView());
                    },
                    child: dataWidget(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dataWidget() {
    return Container(
      width: Get.width,
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: AppColors.softtextcolor.withOpacity(.2), blurRadius: 5)
      ], color: AppColors.whitecolor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 80,
            width: Get.width * 0.2,
            child: Image.network(
              "https://i.pinimg.com/474x/ee/77/7f/ee777fdb78ad9d524d67f8f589d818e3.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: Get.width * 0.65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonWidget().poppinsText(
                    text: "Rimzim",
                    textSize: 18.0,
                    textWeight: FontWeight.w700),
                CommonWidget().poppinsText(
                    text: "₹589", textSize: 15.0, textWeight: FontWeight.w700),
                CommonWidget().poppinsText(
                    text:
                        "Lorem ipsum dolor sit amet consectetur. Lacus rutrum egestas posuere pellentesque amet lacinia. Ut massa nibh sit aliquet ut nunc leo.",
                    textSize: 12.0,
                    textMaxline: 2,
                    textOverFlow: TextOverflow.ellipsis,
                    textWeight: FontWeight.w700,
                    textColor: AppColors.softtextcolor),
              ],
            ),
          )
        ],
      ),
    );
  }
}

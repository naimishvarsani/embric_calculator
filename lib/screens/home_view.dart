// ignore_for_file: unused_import, deprecated_member_use, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/colors.dart';
import '../helpers/common_widget.dart';
import '../helpers/images.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _stichRatecontroller = TextEditingController();
  TextEditingController _cpallustichRatecontroller = TextEditingController();
  TextEditingController _cpalluheadRatecontroller = TextEditingController();
  TextEditingController _pallustichRatecontroller = TextEditingController();
  TextEditingController _palluheadRatecontroller = TextEditingController();
  TextEditingController _sktstichRatecontroller = TextEditingController();
  TextEditingController _sktheadRatecontroller = TextEditingController();
  TextEditingController _blzstichRatecontroller = TextEditingController();
  TextEditingController _blzheadRatecontroller = TextEditingController();
  double? stitchCount;
  double? threadLength;

  void calculate() {
    final width = double.tryParse(_stichRatecontroller.text);
    final height = double.tryParse(_cpallustichRatecontroller.text);
    final density = double.tryParse(_cpalluheadRatecontroller.text);

    if (width != null && height != null && density != null) {
      double area = width * height;
      double stitches = area * density;
      double thread = stitches / 1000; // Assuming 0.1 cm/thread per stitch

      setState(() {
        stitchCount = stitches;
        threadLength = thread;
      });
    }
  }

  @override
  void dispose() {
    _stichRatecontroller.dispose();
    _cpallustichRatecontroller.dispose();
    _cpalluheadRatecontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    calculate();
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
                child: CommonWidget().poppinsText(
                    text: "Embroidery Calculator",
                    textSize: 18.0,
                    textColor: AppColors.redcolor,
                    textWeight: FontWeight.w700),
              ),
              SizedBox(height: 15),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonWidget().poppinsText(
                          text: "Stitch Rate:",
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
                                color:
                                    AppColors.softtextcolor.withOpacity(.5))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              calcBox(),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonWidget().poppinsText(
                          text: "Add on Prices:",
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
                                color:
                                    AppColors.softtextcolor.withOpacity(.5))),
                      ),
                    ],
                  ),
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
                          text: "00.00",
                          textWeight: FontWeight.bold,
                          textColor: AppColors.softtextcolor.withOpacity(.5),
                          textSize: 30.0),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
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
                          Container(
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

  Widget calcBox() {
    return Center(
        child: SizedBox(
      width: Get.width * 0.9,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width * 0.12,
                child: CommonWidget().poppinsText(
                    text: "Name", textSize: 14.0, textWeight: FontWeight.w400),
              ),
              SizedBox(
                width: Get.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidget().poppinsText(
                        text: "Stitches",
                        textSize: 14.0,
                        textWeight: FontWeight.w400),
                    CommonWidget().poppinsText(
                        text: "Head",
                        textSize: 14.0,
                        textWeight: FontWeight.w400),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * 0.18,
                child: Center(
                  child: CommonWidget().poppinsText(
                      text: "Total",
                      textSize: 14.0,
                      textWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          // C-pallu==============================================================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width * 0.15,
                child: CommonWidget().poppinsText(text: "C-Pallu"),
              ),
              Container(
                height: 50,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: Center(
                        child: TextFormField(
                          controller: _cpallustichRatecontroller,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "00.00",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      AppColors.softtextcolor.withOpacity(.5))),
                        ),
                      ),
                    ),
                    Container(
                        height: 10, width: 1, color: AppColors.blackcolor),
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: TextFormField(
                        controller: _cpalluheadRatecontroller,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "00.00",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color:
                                    AppColors.softtextcolor.withOpacity(.5))),
                      ),
                    )
                  ],
                ),
              ),
              CommonWidget().poppinsText(
                  text: "=", textSize: 14.0, textWeight: FontWeight.w400),
              Container(
                height: 50,
                width: Get.width * 0.18,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Center(
                  child: CommonWidget().poppinsText(
                      text: "00.00",
                      textSize: 14.0,
                      textWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
// pallu========================================================================
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width * 0.15,
                child: CommonWidget().poppinsText(text: "Pallu"),
              ),
              Container(
                height: 50,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: Center(
                        child: TextFormField(
                          controller: _pallustichRatecontroller,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "00.00",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      AppColors.softtextcolor.withOpacity(.5))),
                        ),
                      ),
                    ),
                    Container(
                        height: 10, width: 1, color: AppColors.blackcolor),
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: TextFormField(
                        controller: _palluheadRatecontroller,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "00.00",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color:
                                    AppColors.softtextcolor.withOpacity(.5))),
                      ),
                    )
                  ],
                ),
              ),
              CommonWidget().poppinsText(
                  text: "=", textSize: 14.0, textWeight: FontWeight.w400),
              Container(
                height: 50,
                width: Get.width * 0.18,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Center(
                  child: CommonWidget().poppinsText(
                      text: "00.00",
                      textSize: 14.0,
                      textWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
// Skt========================================================================
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width * 0.15,
                child: CommonWidget().poppinsText(text: "Skt"),
              ),
              Container(
                height: 50,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: Center(
                        child: TextFormField(
                          controller: _sktstichRatecontroller,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "00.00",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      AppColors.softtextcolor.withOpacity(.5))),
                        ),
                      ),
                    ),
                    Container(
                        height: 10, width: 1, color: AppColors.blackcolor),
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: TextFormField(
                        controller: _sktheadRatecontroller,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "00.00",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color:
                                    AppColors.softtextcolor.withOpacity(.5))),
                      ),
                    )
                  ],
                ),
              ),
              CommonWidget().poppinsText(
                  text: "=", textSize: 14.0, textWeight: FontWeight.w400),
              Container(
                height: 50,
                width: Get.width * 0.18,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Center(
                  child: CommonWidget().poppinsText(
                      text: "00.00",
                      textSize: 14.0,
                      textWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
// Blz========================================================================
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width * 0.15,
                child: CommonWidget().poppinsText(text: "Blz"),
              ),
              Container(
                height: 50,
                width: Get.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: Center(
                        child: TextFormField(
                          controller: _blzstichRatecontroller,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "00.00",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      AppColors.softtextcolor.withOpacity(.5))),
                        ),
                      ),
                    ),
                    Container(
                        height: 10, width: 1, color: AppColors.blackcolor),
                    SizedBox(
                      width: Get.width * 0.22,
                      height: 50,
                      child: TextFormField(
                        controller: _blzheadRatecontroller,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "00.00",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color:
                                    AppColors.softtextcolor.withOpacity(.5))),
                      ),
                    )
                  ],
                ),
              ),
              CommonWidget().poppinsText(
                  text: "=", textSize: 14.0, textWeight: FontWeight.w400),
              Container(
                height: 50,
                width: Get.width * 0.18,
                decoration: BoxDecoration(
                  color: AppColors.whitecolor,
                ),
                child: Center(
                  child: CommonWidget().poppinsText(
                      text: "00.00",
                      textSize: 14.0,
                      textWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

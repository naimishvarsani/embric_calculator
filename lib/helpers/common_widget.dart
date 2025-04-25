import 'package:calculator/models/lang_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/lang_controller.dart';
import 'app_constant.dart';

class CommonWidget {
  Widget poppinsText(
      {text,
      textMaxline,
      textOverFlow,
      textAlign,
      textColor,
      textSize,
      textWeight}) {
    return Text(text,
        maxLines: textMaxline,
        overflow: textOverFlow,
        textAlign: textAlign,
        style: GoogleFonts.poppins(
          color: textColor,
          fontSize: textSize,
          fontWeight: textWeight,
        ));
  }

  Future<bool?> commontoast({msg}) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class ForgetPasswordBottomSheet {
  static Future<dynamic> buildBottomSheet(BuildContext context) {
    return Get.bottomSheet(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: GetBuilder<LocalizationController>(
            builder: (localizationController) {
              return Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('select'.tr,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                      itemCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => LanguageWidget(
                            languageModel:
                                localizationController.languages[index],
                            localizationController: localizationController,
                            index: index,
                          )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class LanguageWidget extends StatelessWidget {
  final LanguageModel languageModel;
  final LocalizationController localizationController;
  final int index;
  LanguageWidget(
      {required this.languageModel,
      required this.localizationController,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          localizationController.setLanguage(Locale(
            AppConstants.languages[index].languageCode,
            AppConstants.languages[index].countryCode,
          ));
          localizationController.setSelectedIndex(index);
        },
        child: Container(
          padding: EdgeInsets.all(7),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(languageModel.imageUrl,
                        style: TextStyle(fontSize: 20)),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      languageModel.languageName,
                      style: TextStyle(
                          fontSize: 20,
                          color: localizationController.selectedIndex == index
                              ? Colors.blue
                              : Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

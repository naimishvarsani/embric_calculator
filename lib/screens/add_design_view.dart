import 'package:calculator/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        child: Column(
          children: [
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

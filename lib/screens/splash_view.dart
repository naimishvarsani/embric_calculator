// ignore_for_file: prefer_interpolation_to_compose_strings, annotate_overrides

import 'dart:async';

import 'package:calculator/helpers/images.dart';
import 'package:calculator/screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => BottomNavBar()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: Get.width * 0.5,
              child: Image.asset(AppImage.images + "logo.png"),
            ),
          )
        ],
      ),
    );
  }
}

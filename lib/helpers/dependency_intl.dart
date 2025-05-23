// ignore_for_file: prefer_collection_literals, no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/lang_controller.dart';
import '../models/lang_model.dart';
import 'app_constant.dart';

Future<Map<String, Map<String, String>>> init() async {
  final sharedPreference = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreference);
  Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));

  Map<String, Map<String, String>> _languages = Map();
  for (LanguageModel languageModel in AppConstants.languages) {
    String jsonStringValues = await rootBundle
        .loadString('assets/locales/${languageModel.languageCode}.json');
    Map<String, dynamic> _mappedJson = json.decode(jsonStringValues);

    Map<String, String> _json = Map();
    _mappedJson.forEach((key, value) {
      _json[key] = value.toString();
    });

    _languages['${languageModel.languageCode}_${languageModel.countryCode}'] =
        _json;
  }
  return _languages;
}

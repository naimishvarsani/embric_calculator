import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'controllers/lang_controller.dart';
import 'helpers/app_constant.dart';
import 'helpers/dependency_intl.dart' as dep;
import 'helpers/messages.dart';
import 'screens/bottom_nav_bar.dart';

Future<void> main() async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  WidgetsFlutterBinding.ensureInitialized();
  Map<String, Map<String, String>> _languages = await dep.init();

  runApp(MyApp(languages: _languages));
}

class MyApp extends StatelessWidget {
  MyApp({required this.languages});
  final Map<String, Map<String, String>> languages;
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: localizationController.locale,
        translations: Messages(languages: languages),
        fallbackLocale: Locale(AppConstants.languages[0].languageCode,
            AppConstants.languages[0].countryCode),
        home: BottomNavBar(),
      );
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(
  //       statusBarColor: Colors.transparent,
  //       statusBarIconBrightness: Brightness.dark,
  //       statusBarBrightness: Brightness.light,
  //     ),
  //   );

  //   return GetMaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: BottomNavBar(),
  //   );
  // }
}

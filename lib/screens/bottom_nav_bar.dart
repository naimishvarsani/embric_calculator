// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors_in_immutables

import "package:calculator/helpers/colors.dart";
import "package:calculator/helpers/images.dart";
import "package:calculator/screens/design_listview.dart";
import "package:calculator/screens/home_view.dart";
import "package:calculator/screens/setting_view.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart";

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: DesignListview(),
          item: ItemConfig(
            activeForegroundColor: AppColors.redcolor,
            inactiveBackgroundColor: Colors.white,
            inactiveIcon: Image.asset(AppImage.icon + "list.png"),
            icon: Image.asset(AppImage.icon + "list-2.png"),
            title: "List",
          ),
        ),
        PersistentTabConfig(
          screen: HomeView(),
          item: ItemConfig(
            activeForegroundColor: AppColors.redcolor,
            inactiveIcon: Image.asset(AppImage.icon + "home.png"),
            icon: Image.asset(AppImage.icon + "home-2.png"),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: SettingView(),
          item: ItemConfig(
            activeForegroundColor: AppColors.redcolor,
            inactiveIcon: Image.asset(AppImage.icon + "setting.png"),
            icon: Image.asset(AppImage.icon + "setting-2.png"),
            title: "Settings",
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return PersistentTabView(
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => Style4BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(color: AppColors.bgcolor),
      ),
      navBarOverlap: NavBarOverlap.full(),
    );
  }
}

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/settings_controller.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/screens/styles/style_data.dart';

void setPage(int index) {
  SettingsController.at.currentIndex = index;

  switch(index) {
    case 0:
      Get.back();
      break;
    case 1: 
      Get.toNamed(Routes.pages[index]);
      break;
  }
}

void _getPage(int index) {
  if(Get.currentRoute != Routes.pages[index]) setPage(index);
}

Widget getNavigation() => DotNavigationBar(
      backgroundColor: Styles.SubColor,
      currentIndex: SettingsController.at.currentIndex,
      onTap: (int index) {
        _getPage(index);
        //SettingsController.at.setPage(index);
      },
      dotIndicatorColor: Colors.white,
      items: [
        /// Home
        DotNavigationBarItem(
          icon: Icon(Icons.home),
          selectedColor: Colors.white,
        ),

        /// Likes
        DotNavigationBarItem(
          icon: Icon(Icons.info_outline),
          selectedColor: Colors.white,
        ),

       /*  /// Search
        DotNavigationBarItem(
          icon: Icon(Icons.search),
          selectedColor: Colors.orange,
        ),

        /// Profile
        DotNavigationBarItem(
          icon: Icon(Icons.person),
          selectedColor: Colors.teal,
        ), */
      ],
    );
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/settings_controller.dart';
import 'package:portfolio/routes.dart';

void _getPage(int index) {
  if(Get.currentRoute != Routes.pages[index])
    Get
      ..back(closeOverlays: true)
      ..toNamed(Routes.pages[index]);
  }

Widget getNavigation() => DotNavigationBar(
      currentIndex: 0,
      onTap: (int index) {
        _getPage(index);
        //SettingsController.at.setPage(index);
      },
      dotIndicatorColor: Colors.black,
      items: [
        /// Home
        DotNavigationBarItem(
          icon: Icon(Icons.home),
          selectedColor: Colors.purple,
        ),

        /// Likes
        DotNavigationBarItem(
          icon: Icon(Icons.info),
          selectedColor: Colors.pink,
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
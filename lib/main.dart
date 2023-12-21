import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/auth_controller.dart';
import 'package:portfolio/controllers/settings_controller.dart';
import 'package:portfolio/screens/nav_control.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) => GetBuilder<SettingsController>(
        id: 'settings',
        init: SettingsController(),
        builder: (controller) => GetMaterialApp(
          onInit: () {
            Get.put(AuthController());
          },
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          title: 'Portfolio',
          home: const NavControl()
        ),
      );
}

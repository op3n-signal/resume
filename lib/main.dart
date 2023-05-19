import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/controllers/auth_controller.dart';
import 'package:portfolio/controllers/settings_controller.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/styles/style_data.dart';

void main() async {
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) => GetBuilder<SettingsController>(
        id: 'settings',
        init: SettingsController(),
        initState: (_) {
          Get
            ..put(AuthController(), permanent: true);
        },
        builder: (controller) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: TextTheme(
              bodyMedium: TextStyle(fontSize: Styles.Regular, fontFamily: 'RobotoMono')
            )
          ),
          title: 'Portfolio',
          home: const HomeScreen(),
          getPages: Routes.getPages(),
        ),
      );
}

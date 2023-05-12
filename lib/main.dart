import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/controllers/settings_controller.dart';
import 'package:portfolio/data/routes.dart';
import 'package:portfolio/screens/home.dart';

void main() async {
  Routes.createRoutes();
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<SettingsController>(
        id: 'settings',
        initState: (_) {
          Get..put(SettingsController(), permanent: true);
        },
        builder: (controller) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Portfolio',
          home: const Home(),
          navigatorKey: Routes.seafarer.navigatorKey,
          onGenerateRoute: Routes.seafarer.generator(),
        ),
      );
}

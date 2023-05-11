import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/home_controller.dart';
import 'package:portfolio/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => GetMaterialApp(
      onInit: () {
        Get
          ..put(HomeController(), permanent: true);
      },
      home: const Home(),
      initialRoute: '/',
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 26,)
        ),
        appBarTheme: AppBarTheme(
          color: Colors.teal
        )
      ),
      title: 'Portfolio'
    );
}
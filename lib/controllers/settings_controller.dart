import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  static SettingsController get at => Get.find();

  ColorScheme scheme = ColorScheme(
    brightness: Brightness.light, 
    primary: Colors.teal, 
    onPrimary: Colors.white, 
    secondary: Colors.deepOrange, 
    onSecondary: Colors.white, 
    error: Colors.white, 
    onError: Colors.red, 
    background: Colors.white, 
    onBackground: Colors.black, 
    surface: Colors.teal, 
    onSurface: Colors.white
    );
}
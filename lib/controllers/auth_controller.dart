import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get at => Get.find();

  bool isLoggedIn = false;
}
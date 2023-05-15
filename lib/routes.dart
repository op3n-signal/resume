import 'package:get/get.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/home_screen.dart';

class Routes {
  static List<String> pages = [
    '/',
    '/about'
  ];

  static List<GetPage<dynamic>> getPages() {
    return [
      GetPage(name: pages[0], page: () => HomeScreen()),
      GetPage(name: pages[1], page: () => AboutScreen()),
    ];
  }
}
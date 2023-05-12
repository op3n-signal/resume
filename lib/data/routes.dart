import 'package:portfolio/screens/home.dart';
import 'package:seafarer/seafarer.dart';

class Routes {
  static final seafarer = Seafarer();

  static void createRoutes() {
    seafarer.addRoute(SeafarerRoute(
        name: "/",
        builder: (context, args, params) {
          return Home();
        },
      ));
  }
}
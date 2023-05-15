import 'package:flutter/material.dart';
import 'package:portfolio/widget/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home')),
      bottomNavigationBar: getNavigation(),
      );
  }


}

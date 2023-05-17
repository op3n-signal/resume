import 'package:flutter/material.dart';
import 'package:portfolio/widget/navigation.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('About')),
      bottomNavigationBar: getNavigation(),
      );
  }
}
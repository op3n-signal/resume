import 'package:flutter/material.dart';
import 'package:portfolio/widget/appbar.dart';
import 'package:portfolio/widget/navigation.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static final title = 'About';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title),
      body: Center(child: Text('About')),
      bottomNavigationBar: getNavigation(),
      );
  }
}
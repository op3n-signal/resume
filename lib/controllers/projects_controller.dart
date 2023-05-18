import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widget/project.dart';

class ProjectsController extends GetxController {
  static ProjectsController get at => Get.find();

  List<Widget> projects = [
    Project('Web API', 'api.png'),
    SizedBox(width: 10,),
    Project('Text-To-Speech', 'tts.png'),
    SizedBox(width: 10,),
    Project('Budget', 'Recipe_logo.jpeg')
  ];
}
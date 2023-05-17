import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/projects_controller.dart';
import 'package:portfolio/screens/styles/style_data.dart';
import 'package:portfolio/widget/project.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<ProjectsController>(
    init: ProjectsController(),
    id: 'projects',
    builder: (controller) => Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      color: Colors.blue.shade100,
      child: Container(
        height: Styles.ProjectScrollHeight,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: ProjectsController.at.projects, 
        ),
      ),
    )
  );
}
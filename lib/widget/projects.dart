import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/projects_controller.dart';
import 'package:portfolio/widget/project.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<ProjectsController>(
    init: ProjectsController(),
    id: 'projects',
    builder: (controller) => Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: ProjectsController.at.projects, 
      ),
    ),
  );
}
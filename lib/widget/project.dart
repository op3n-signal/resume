import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project(this.title, {Key? key}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(title),
          Image.asset('assets/images/unname.jpg', width: 100,)
        ]
      ),
    );
  }
}
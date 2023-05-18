import 'package:flutter/material.dart';
import 'package:portfolio/screens/styles/style_data.dart';
import 'package:portfolio/widget/shadow_container.dart';

class Project extends StatelessWidget {
  const Project(this.title, this.image, {Key? key}) : super(key: key);

  final title;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              shadowContainer(
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/$image', 
                    width: MediaQuery.of(context).size.width * Styles.ProjectWidth, 
                    height: MediaQuery.of(context).size.height * Styles.ProjectHeight, 
                    fit: BoxFit.cover,
                  )
                ),
              ),
              
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
                child: Container(
                  color: Color.fromRGBO(222, 228, 228, 1),
                  padding: EdgeInsets.all(4),
                  width: MediaQuery.of(context).size.width * Styles.ProjectWidth,
                  alignment: Alignment.topCenter,
                  child: Text(
                    title, 
                    style: TextStyle(
                      fontSize: Styles.Regular2,   
                    ),
                  ),
                )
              )
          ],
        )
        ]
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:portfolio/custom_icons_icons.dart';
import 'package:portfolio/screens/styles/style_data.dart';
import 'package:portfolio/widget/appbar.dart';
import 'package:portfolio/widget/navigation.dart';
import 'package:portfolio/widget/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static final title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              children: [
                Center(
                    child: Text('Antonio Martinez', 
                      style: TextStyle(
                        fontFamily: 'Trajan Pro',
                        fontSize: Styles.Heading,
                        )
                    ),
                  ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: RubberBand( 
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/images/unname.jpg'),
                    )
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.width * 0.4,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Full Stack Dev', style: TextStyle(fontSize: Styles.Heading),)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                Center(child: Text('w/ 1+ year experience')),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('C#', style: TextStyle(color: Color.fromARGB(255, 13, 88, 150), fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                      Icon(CustomIcons.angular, color: Colors.red),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                      Icon(CustomIcons.js_square, color: Color.fromARGB(255, 212, 192, 11)),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                      Icon(CustomIcons.css3_alt, color: Colors.blueAccent,),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                      Icon(Icons.flutter_dash, color: Colors.blue),
                    ],
                  )
                ),
              ],
            ),
          ),
          Projects()
        ],
      ),
      bottomNavigationBar: getNavigation(),
      );
  }


}

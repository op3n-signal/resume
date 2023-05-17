import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:portfolio/screens/styles/style_data.dart';
import 'package:portfolio/widget/navigation.dart';
import 'package:portfolio/widget/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                Center(
                    child: Text('Antonio Martinez', 
                      style: TextStyle(
                        fontFamily: 'Trajan Pro',
                        letterSpacing: 1,
                        fontSize: Styles.Heading
                        )
                    ),
                  ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
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
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.width * 0.4,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Full Stack Dev', style: TextStyle(fontSize: Styles.Regular),)),
                SizedBox(height: 10,),
                Center(child: Text('1+ year experience')),
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

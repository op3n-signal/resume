import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:portfolio/screens/style_data.dart';
import 'package:portfolio/widget/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
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
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.4,
            child: ListView(
              shrinkWrap: true,
              children: [
                Center(child: Text('Full Stack Dev')),
                Center(child: Text('')),
              ],
            ),
          )
        ]),
      bottomNavigationBar: getNavigation(),
      );
  }


}

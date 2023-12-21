import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Center(
                child: Text('Full-Stack Developer', 
                  style: TextStyle(
                    fontFamily: 'Trajan Pro',
                    letterSpacing: 1,
                    fontSize: 26
                    )
                ),
              ),
              Divider(color: Colors.transparent),
              Center(
                child: Text('Antonio Martinez', 
                  style: TextStyle(
                    fontFamily: 'Trajan Pro',
                    letterSpacing: 1,
                    fontSize: 22,
                    color: Color.fromARGB(255, 191, 209, 224)
                    )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: RubberBand(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('assets/images/unname.jpg'),
                  )
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.6,
            child: ListView(
              shrinkWrap: true,
              children: [
                Center(child: Text('Full-Stack Dev')),
                Divider(),
                Center(child: Text('2 yrs Experience')),
                Divider(),
                Center(child: Text('Currently in Developer Role')),
              ],
            ),
          )
        ],
      );
  }


}

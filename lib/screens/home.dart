import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( 
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Image(
                  image: AssetImage('assets/images/unname.jpg'),
                  fit: BoxFit.cover,
                  )
                ),
            ]
          ),
          Container(
            child: Text(
              'Antonio Martinez \n\nFull-stack developer', 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.headline1.fontSize,
                )
              ),
          )
      ],)
    );
  }
}
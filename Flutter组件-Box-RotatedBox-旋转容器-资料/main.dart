import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'RotatedBox组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('RotatedBox组件'),
        ),

        body: Center(
          child: Column(
            children: <Widget>[

              SizedBox(
                height: 20.0,
              ),
              RotatedBox(
                child: Text('ABCDE',style: TextStyle(fontSize: 28.0),),
                //旋转次数 每次旋转一圈的1/4
                quarterTurns: 1,
              ),

              SizedBox(
                height: 20.0,
              ),
              RotatedBox(
                child: Text('ABCDE',style: TextStyle(fontSize: 28.0),),
                quarterTurns: 2,
              ),

              SizedBox(
                height: 20.0,
              ),
              RotatedBox(
                child: Text('ABCDE',style: TextStyle(fontSize: 28.0),),
                quarterTurns: 3,
              ),

              SizedBox(
                height: 20.0,
              ),
              RotatedBox(
                child: Text('ABCDE',style: TextStyle(fontSize: 28.0),),
                quarterTurns: 4,
              ),



            ],
          ),
        ),

      ),
    );

  }
}

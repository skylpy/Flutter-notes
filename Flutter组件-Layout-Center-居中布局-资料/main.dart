import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Center布局组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Center布局组件'),
        ),
        body:Center(
          child: Container(
            color: Colors.red,
            width: 200.0,
            height: 100.0,
            child: Center(
              child: Text(
                '居中布局',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

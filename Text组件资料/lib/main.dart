import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text组件'),
        ),
        body:Center(
          child:Column(
            children: <Widget>[

              Text(
                'hello',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 48.0,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black,
                ),
              ),


              Text(
                '下划线',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 48.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                ),
              ),

              Text(
                '虚线上划线+23号+倾斜',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 23.0,
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Colors.red,
                ),
              ),


              Text(
                '36号+加粗',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 36.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.black,
                ),
              ),


              Text(
                '自定义字体',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 36.0,
                  fontFamily: 'myfont',
                ),
              ),


            ],
          ),
          ),
      ),
    );
  }
}

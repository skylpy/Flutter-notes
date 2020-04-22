import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SizedBox组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SizedBox组件'),
        ),
        body:Center(
          //指定宽高容器 child不允许超出指定大小的范围
          child: SizedBox(
            width: 200.0,
            height: 200.0,
            //限定图片大小
            child: Image.asset('assets/cat.jpeg'),
            //子元素
//            child: Container(
//              width: 10.0,
//              height: 10.0,
//              color: Colors.green,
//            ),
          ),
        ),

      ),
    );

  }
}

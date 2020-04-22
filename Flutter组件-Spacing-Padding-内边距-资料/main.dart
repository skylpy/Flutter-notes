import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Padding组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Padding组件'),
        ),
        body:Center(
          //父容器
          child: Container(
            width: 300.0,
            height: 300.0,
            color: Colors.grey,
            //内边距
            //padding: const EdgeInsets.all(30.0),
            //根据left top right bottom分别设置内边距
            //padding: const EdgeInsets.only(left:10.0, top:20.0,right:30.0, bottom:40.0),
            padding: const EdgeInsets.fromLTRB(10.0, 20.0,30.0, 40.0),
            //子容器
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

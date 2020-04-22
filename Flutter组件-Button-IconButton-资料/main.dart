import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'IconButton组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('IconButton组件'),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child: IconButton(
              //图标
              icon: Icon(Icons.print),
              //图标大小
              iconSize: 48.0,
              //根据父容器来决定图标的位置
              alignment: AlignmentDirectional.center,
              color: Colors.green,
              //墨汁飞溅效果
              splashColor: Colors.blue,
              padding: EdgeInsets.only(bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
              //提示文本
              tooltip: '一个打印图标',
              //按下
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

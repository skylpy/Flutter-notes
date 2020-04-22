import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  final int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'IndexedStack组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('IndexedStack组件'),
        ),
        body: IndexedStack(
          //当前显示内容的索引
          index: currentIndex,
          children: <Widget>[
            //圆形头像0
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 50.0,
            ),
            //添加文本的容器1
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Text(
                'IndexedStack',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            //添加一个图标2
            Icon(
              Icons.lock,
              size: 48.0,
              color: Colors.green,
            ),

          ],
        ),
      ),
    );
  }
}

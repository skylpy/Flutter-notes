import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SnackBar组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SnackBar组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          final snackBar = new SnackBar(
            //提示信息
            content: Text('这是一个SnackBar'),
            //背景色
            backgroundColor: Colors.green,
            //操作
            action: SnackBarAction(
              textColor: Colors.white,
              label: '撤消',
              onPressed: () {},
            ),
            //持续时间
            duration: Duration(minutes: 1),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('显示屏幕底部消息'),
      ),
    );
  }
}

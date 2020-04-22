import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Icon组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Icon组件'),
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
      child: Column(
        children: <Widget>[
          //自带图标
          Icon(
            //图标
            Icons.favorite,
            //颜色
            color: Colors.redAccent,
            //大小
            size: 48.0,
          ),

          //图片Icon
          ImageIcon(
            AssetImage('assets/phone.png'),
            color: Colors.green,
            size: 48.0,
          ),

          //可交互的Icon
          IconButton(
            icon: Icon(Icons.print),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}

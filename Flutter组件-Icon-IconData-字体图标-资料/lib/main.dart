import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'IconData字体图标',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('IconData字体图标'),
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
      child: Column(children: <Widget>[
        Icon(
          IconData(
              //code
              0xe8ad,
              //字体
              fontFamily: 'MaterialIcons'),
          color: Colors.redAccent,
        ),
        Icon(
          IconData(
            //code
              61447,
              //字体
              fontFamily: 'FontAwesome'),
          color: Colors.green,
          size: 68.0,
        ),

        Icon(
          IconData(
            //code
              61454,
              //字体
              fontFamily: 'FontAwesome'),
          color: Colors.green,
          size: 68.0,
        ),

      ]),
    );
  }
}

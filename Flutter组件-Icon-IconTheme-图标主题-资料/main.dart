import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'IconTheme图标主题',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('IconTheme图标主题'),
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
      //图标主题
      child: IconTheme(
        //图标主题数据
        data: IconThemeData(
            color: Colors.green,
            //透明度
            opacity: 0.5,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              size: 48.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '喜欢',
                style: TextStyle(fontSize: 44.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

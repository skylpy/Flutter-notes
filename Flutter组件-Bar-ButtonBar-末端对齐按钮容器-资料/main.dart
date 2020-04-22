import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ButtonBar组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ButtonBar组件'),
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
      //末端按钮对齐的容器
      child: ButtonBar(
        //对齐方式 默认为末端end
        alignment: MainAxisAlignment.spaceAround,
        //child大小
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(child: Text('按钮1'), color: Colors.yellowAccent,onPressed: (){},),
          RaisedButton(child: Text('按钮2'), color: Colors.yellowAccent,onPressed: (){},),
          RaisedButton(child: Text('按钮3'), color: Colors.yellowAccent,onPressed: (){},),

        ],
      ),
    );
  }
}

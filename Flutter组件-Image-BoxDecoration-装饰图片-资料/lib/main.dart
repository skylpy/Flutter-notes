import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'DecorationImage组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('DecorationImage组件'),
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
    return Container(
      child: Center(
        child: Text(
          '装饰图片',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      height: 300.0,
      width: 300.0,
      //装饰器
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        //装饰图片
        image: DecorationImage(
          //使用资源图片
          image: AssetImage(
            'assets/flower.jpeg',
          ),
          fit: BoxFit.contain,
          //对齐方式
          alignment: Alignment.center,
        ),
      ),
      margin: EdgeInsets.only(
        left: 40.0,
        top: 40.0,
      ),
    );
  }
}

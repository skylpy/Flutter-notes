import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Image组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Image组件'),
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
          //资源图片 可添加缩放值
          Image.asset('assets/flower.jpeg',scale: 2.5,),
          //网络图片 可添加缩放值
          Image.network(
            'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2756575517,833879878&fm=200&gp=0.jpg',
            scale: 2.5,
          ),
          //本地图片
          //Image.file(file),
          //控制图片大小
          SizedBox(
            width: 200.0,
            height: 200.0,
            child: Image.asset('assets/flower.jpeg',fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}

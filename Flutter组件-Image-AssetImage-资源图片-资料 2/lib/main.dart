import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AssetImage组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AssetImage组件'),
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
          SizedBox(
            width: 200.0,
            height: 200.0,
            //背景图片
            child:  CircleAvatar(
              backgroundImage: AssetImage('assets/cat.jpeg'),
            ),
          ),
//          Container(
//            //添加到Image对象
//            child: Image(
//              width: 300.0,
//              height: 300.0,
//              image: AssetImage('assets/view.jpeg'),
//            ),
//          ),
          Image(
            //可缩放的图片组件 scale值越大 图片越小
            image: ExactAssetImage('assets/flutter.png',scale: 1.5,),
          ),
        ],
      ),
    );
  }
}

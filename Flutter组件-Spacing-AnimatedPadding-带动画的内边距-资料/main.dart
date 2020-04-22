import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AnimatedPadding组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AnimatedPadding组件'),
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
  double paddingValue = 10.0;

  _changePaddingValue() {
    if (paddingValue == 10.0) {
      setState(() {
        paddingValue = 50.0;
      });
    } else {
      setState(() {
        paddingValue = 10.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 300.0,
            height: 300.0,
            color: Colors.redAccent,
            //带动画的内边距
            child: AnimatedPadding(
              //均衡的内边距
              padding: EdgeInsets.symmetric(
                //水平及垂直方向的边距值
                horizontal: paddingValue,
                vertical: paddingValue,
              ),
              //动画时长
              duration: const Duration(milliseconds: 100),
              //动画类型
              curve: Curves.bounceIn,
              child: Container(
                height: 200.0,
                color: Colors.greenAccent,
              ),
            ),
          ),
          RaisedButton(
            onPressed: _changePaddingValue,
            child: Text('点击切换内边距'),
          ),
        ],
      ),
    );
  }
}

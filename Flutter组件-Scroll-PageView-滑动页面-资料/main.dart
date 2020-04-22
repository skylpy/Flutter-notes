import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PageView组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('PageView组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DemoPageState();
  }
}

class DemoPageState extends State<DemoPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      //滚动页面
      child: PageView(
        //翻滚方向
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            child: Center(
              child: Text('这是第一页',style: TextStyle(color: Colors.white,fontSize: 28.0),),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('这是第二页',style: TextStyle(color: Colors.white,fontSize: 28.0),),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text('这是第三页',style: TextStyle(color: Colors.white,fontSize: 28.0),),
            ),
          ),
          
          
        ],
      ),
    );
  }
}

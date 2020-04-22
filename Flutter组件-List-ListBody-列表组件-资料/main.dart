import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ListBody组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ListBody组件'),
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
    return Column(
      children: <Widget>[

        //ListBody不常用，但可以和Cloumn Row及ListView结合使用即可
        ListBody(
          //对齐方式
          mainAxis: Axis.vertical,
          //内容是否反向
          reverse: false,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 50.0,
              height: 50.0,
              child: Text('A',style: TextStyle(color: Colors.white),),
            ),
            Container(
              color: Colors.orange,
              width: 50.0,
              height: 100.0,
              child: Text('B',style: TextStyle(color: Colors.white),),
            ),
            Container(
              color: Colors.blue,
              width: 50.0,
              height: 150.0,
              child: Text('C',style: TextStyle(color: Colors.white),),
            ),
            
          ],

        ),

      ],
    );
  }
}

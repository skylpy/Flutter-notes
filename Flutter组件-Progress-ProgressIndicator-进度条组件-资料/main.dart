import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ProgressIndicator组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ProgressIndicator组件'),
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
      return Center(
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 100.0,
            ),

            CircularProgressIndicator(
              //背景色
              backgroundColor: Colors.red,
              //进度值的颜色
              valueColor: AlwaysStoppedAnimation(Colors.yellow),
              //当前进度值
              value: 0.5,
            ),

            SizedBox(
              height: 100.0,
            ),

            LinearProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation(Colors.yellow),
              value: 0.3,
            ),

          ],
        ),
      );
  }

}

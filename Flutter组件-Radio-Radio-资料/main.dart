import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Radio组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Radio组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {

  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      //次轴居中
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,

      children: <Widget>[

        Radio(
          //控件颜色
          activeColor: Colors.red,
          //值
          value: 1,
          //当value与groupValue一致时选中
          groupValue: groupValue,
          onChanged: (T){
            this.setState((){
              groupValue = T;
            });
          },
        ),
        Radio(
          value: 2,
          groupValue: groupValue,
          onChanged: (T){
            this.setState((){
              groupValue = T;
            });
          },
        ),
        Radio(
          value: 3,
          groupValue: groupValue,
          onChanged: (T){
            this.setState((){
              groupValue = T;
            });
          },
        ),

      ],

    );
  }
}

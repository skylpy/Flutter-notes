import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'RawMaterialButton组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('RawMaterialButton组件'),
        ),
        body: RawMaterialButton(
          onPressed: (){},
          textStyle: TextStyle(fontSize: 28.0,color: Colors.black,),
          //文本
          child: Text('RawMaterialButton组件'),
          //高亮时的背景色
          highlightColor: Colors.red,
          //墨汁飞溅
          splashColor: Colors.blue,
          //搞锯齿
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.only(bottom: 5.0,top: 5.0,left: 30.0,right: 30.0),
          //高亮时的阴影
          highlightElevation: 10.0,
        ),
      ),
    );
  }
}

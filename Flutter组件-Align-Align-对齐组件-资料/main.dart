import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Align组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Align组件'),
        ),
        body:Container(
//          width: 200.0,
//          height: 200.0,
          color: Colors.red,
          child: Align(
            //对齐方式
            //alignment: Alignment.bottomLeft,
            //对齐方式使用x,y来表示 范围是-1.0 - 1.0
            alignment: Alignment(-0.5,-1.0),
            //宽高填充的系数
            widthFactor: 3.0,
            heightFactor: 3.0,
            child: Container(
              color: Colors.green,
              width: 100.0,
              height: 50.0,
              child: Text('align',style: TextStyle(color: Colors.white),),
            ),
          ),
        ),

      ),
    );
  }
}


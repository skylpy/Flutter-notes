import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Expanded组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Expanded组件'),
        ),
        body:Center(
          child: Row(
            children: <Widget>[
              
              RaisedButton(
                color: Colors.orange,
                child: Text('橙色按钮'),
                onPressed: (){

                },
              ),

              //填充剩余所有空间
//              Expanded(
//                flex: 1,
//                child: RaisedButton(
//                  color: Colors.green,
//                  child: Text('绿色按钮'),
//                  onPressed: (){
//
//                  },
//                ),
//              ),

              //填充剩余可占用的空间
              Flexible(
                flex: 1,
                child: RaisedButton(
                  color: Colors.green,
                  child: Text('绿色按钮'),
                  onPressed: (){

                  },
                ),
              ),

              RaisedButton(
                color: Colors.orange,
                child: Text('橙色按钮'),
                onPressed: (){

                },
              ),
              
            ],
          ),
        ),

      ),
    );

  }
}

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ConstrainedBox组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ConstrainedBox组件'),
        ),
        body:Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 200,
                height: 60,
                child: Text(
                  'width=maxWidth height=maxheight',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
              ),
              SizedBox(
                height: 20.0,
              ),
              //添加一个指定大小的盒子，限定其最大最小宽高
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 20.0,
                  maxHeight: 60.0,
                  maxWidth: 200.0,
                ),
                child: Container(
                  width: 250,
                  height: 80,
                  child: Text(
                    'width>maxWidth height>maxHeight',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ),

              SizedBox(
                height: 20.0,
              ),


              SizedBox(
                height: 20.0,
              ),
              //添加一个指定大小的盒子，限定其最大最小宽高
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 20.0,
                  maxHeight: 60.0,
                  maxWidth: 200.0,
                ),
                child: Container(
                  width: 150,
                  height: 50,
                  child: Text(
                    '在区间范围内',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              Container(
                width: 100,
                height: 20,
                child: Text(
                  'width=minWidth height=minheight',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
              ),
              SizedBox(
                height: 20.0,
              ),
              //添加一个指定大小的盒子，限定其最大最小宽高
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 20.0,
                  maxHeight: 60.0,
                  maxWidth: 200.0,
                ),
                child: Container(
                  width: 80,
                  height: 10,
                  child: Text(
                    'width<minWidth height<minHeight',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ),






            ],
          ),
        ),
      ),
    );

  }
}

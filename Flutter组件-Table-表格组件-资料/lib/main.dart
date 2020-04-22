import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Table组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Table组件'),
        ),
        body: Center(
          child: Container(
            //表格
            child: Table(
              //所有列宽
              columnWidths: const {
                //列宽
                0: FixedColumnWidth(100.0),
                1: FixedColumnWidth(200.0),
                2: FixedColumnWidth(50.0),
              },
              //表格边框样式
              border: TableBorder.all(
                color: Colors.green,
                width: 2.0,
                style: BorderStyle.solid,
              ),
              children: [
                TableRow(
                  //第一行样式 添加背景色
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  children: [
                    //增加行高
                    SizedBox(
                      height: 30.0,
                      child: Text('姓名',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),

                    Text('性别',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('年龄',style: TextStyle(fontWeight: FontWeight.bold),),
                  ]
                ),
                TableRow(
                    children: [
                      Text('张三'),
                      Text('男'),
                      Text('20'),
                    ]
                ),
                TableRow(
                    children: [
                      Text('小红'),
                      Text('女'),
                      Text('28'),
                    ]
                ),
                TableRow(
                    children: [
                      Text('李四'),
                      Text('男'),
                      Text('28'),
                    ]
                ),
                TableRow(
                    children: [
                      Text('机器猫'),
                      SizedBox(
                        width: 88.0,
                        height: 88.0,
                        child: Image.asset('assets/cat.jpeg'),
                      ),

                      Text('26'),
                    ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

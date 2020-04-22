import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar组件',
      home: Scaffold(
        //FAB按钮位置
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //FAB按钮
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
            onPressed: (){},
        ),
        //底部应用栏
        bottomNavigationBar: BottomAppBar(
          //FloatingActionButton和BottomAppBar之间的距离
          notchMargin: 10.0,
          //底部应用栏背景色
          color: Colors.green,
          child: Row(
            //设置大小
            mainAxisSize: MainAxisSize.max,
            //对齐方式
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.menu),onPressed: (){},),
              IconButton(icon: Icon(Icons.search),onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FloatingActionButton组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('FloatingActionButton组件'),
        ),
        body: Column(
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.red,
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
            FloatingActionButton(
              //图标
              child: const Icon(Icons.person),
              //提示信息
              tooltip: '这是一个自定义的按钮',
              //背景色
              backgroundColor: Colors.blue,
              //前景色
              foregroundColor: Colors.white,
              //hero效果使用
              heroTag: null,
              //未点击时的阴影
              elevation: 8.0,
              //点击时的阴影
              highlightElevation: 16.0,
              onPressed: () {},
              // 是否为“mini”类型，默认为false,FAB 分为三种类型：regular, mini, and extended
              mini: false,
              //方形的样式
//              shape: Border.all(
//                width: 2.0,
//                color: Colors.white,
//                style: BorderStyle.solid,
//              ),
              //圆角方形的样式
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.0,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
              ),
            ),
            //扩展的FAB按钮
            FloatingActionButton.extended(
                onPressed: (){},
                icon: Icon(Icons.explicit),
                label: Text('这是一个扩展的按钮'),
            ),
          ],
        ),
      ),
    );
  }
}

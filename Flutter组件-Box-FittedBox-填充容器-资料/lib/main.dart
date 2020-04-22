import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


/*
          BoxFit.fill
          全部显示，显示可能拉伸，充满

          BoxFit.contain
          全部显示，显示原比例，不需充满

          BoxFit.cover
          显示可能拉伸，可能裁剪，充满

          BoxFit.fitWidth
          显示可能拉伸，可能裁剪，宽度充满

          BoxFit.fitHeight
          显示可能拉伸，可能裁剪，高度充满


          BoxFit.none

          BoxFit.scaleDown
          效果和contain差不多,但是此属性不允许显示超过源图片大小，可小不可大
*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FittedBox填充容器',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('FittedBox填充容器'),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
            Container(
                width: 300.0,
                height: 300.0,
                color: Colors.grey,
                child: FittedBox(
                  //填充类型
                  fit: BoxFit.none,
                  //居中对齐
                  alignment: Alignment.center,
                  child: Image.asset('assets/view.jpeg'),
                ),
              ),

            ],
          ),
        ),

      ),
    );

  }
}

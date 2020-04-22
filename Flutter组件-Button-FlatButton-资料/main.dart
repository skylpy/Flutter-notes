//文档：https://docs.flutter.io/flutter/material/FlatButton-class.html
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlatButton组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('FlatButton组件'),
        ),
        body: Column(
          children: <Widget>[


            FlatButton.icon(
                onPressed: (){

                },
                icon: Icon(Icons.print,size: 36.0,),
                label: Text('默认按钮',style: TextStyle(fontSize: 36.0),),),

            FlatButton(
              //文本
              child: Text(
                'Success',
                style: TextStyle(fontSize: 26.0),
              ),
              //按钮背景色
              color: Colors.green,
              //按钮亮度
              colorBrightness: Brightness.dark,
              //失效时的背景色
              disabledColor: Colors.grey,
              //失效时的文本色
              disabledTextColor: Colors.grey,
              //文本颜色
              textColor: Colors.white,
              //按钮主题 ButtonTheme ButtonThemeData ButtonTextTheme ThemeData
              textTheme: ButtonTextTheme.normal,
              //墨汁飞溅的颜色
              splashColor: Colors.blue,
              //抗锯齿能力
              clipBehavior: Clip.antiAlias,
              //内边距
              padding: new EdgeInsets.only(
                bottom: 5.0,
                top: 5.0,
                left: 20.0,
                right: 20.0,
              ),
              //边框样式
//        shape: Border.all(
//          width: 2.0,
//          color: Colors.white,
//          style: BorderStyle.solid,
//        ),
              shape: RoundedRectangleBorder(
                side: new BorderSide(
                  width: 2.0,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),

              onPressed: () {
                print('按钮按下操作');
              },
            ),

            FlatButton(
              //文本
              child: Text(
                'Error',
                style: TextStyle(fontSize: 26.0),
              ),
              //按钮背景色
              color: Colors.red,
              onPressed: () {
                print('按钮按下操作');
              },
            ),
          ],
        ),
      ),
    );
  }
}





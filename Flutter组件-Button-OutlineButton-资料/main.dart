import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'OutlineButton组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('OutlineButton组件'),
        ),
        body:Center(
          child: Column(
            children: <Widget>[

              OutlineButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.ac_unit,size: 28.0,color: Colors.green,),
                  label: Text('图标按钮',style: TextStyle(fontSize: 28.0,color:Colors.green ),)),

              OutlineButton(
                child: Text('OutlineButton组件',style: TextStyle(fontSize: 28.0,),),
                onPressed: (){

                },
                //边框的颜色
                borderSide: BorderSide(color: Colors.orange,width: 2.0,),
                //按钮背景色
                color: Colors.white70,
                //按钮失效时边框的颜色
                disabledBorderColor: Colors.red,
                //高亮时的背景色
                highlightedBorderColor: Colors.black,
                //失效时的文本色
                disabledTextColor: Colors.grey,
                //文本颜色
                textColor: Colors.green,
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}





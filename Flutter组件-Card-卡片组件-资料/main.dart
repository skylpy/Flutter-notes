import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Card组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Card组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        //背景色
        color: Colors.green,
        //卡片的z坐标 阴影的大小
        elevation: 10.0,
        //外边距
        margin: EdgeInsets.all(20.0),
        //卡片边框样式
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        //卡片的具体内容
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            const ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(
                '苹果电脑MacBookPro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                ),
              ),
              subtitle: Text(
                '配置为16核 8G内存',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              contentPadding: EdgeInsets.all(20.0),
            ),

            //添加两个按钮
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('购买',style: TextStyle(color: Colors.black,fontSize: 18.0),),
                    onPressed: (){},
                  ),
                  FlatButton(
                    child: Text('取消',style: TextStyle(color: Colors.black,fontSize: 18.0),),
                    onPressed: (){},
                  ),

                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}

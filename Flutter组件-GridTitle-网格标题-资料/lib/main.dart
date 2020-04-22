import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GridTitle组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('GridTitle组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DemoPageState();
  }
}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return
         Container(
          height: 600.0,
          color: Colors.grey,
          child: GridView.count(
            //列的个数
              crossAxisCount: 2,
            //垂直空隙
            mainAxisSpacing: 10.0,
            //水平空隙
            crossAxisSpacing: 4.0,
            //内边距
            padding: EdgeInsets.all(4.0),
            children: <Widget>[

              //风格标题基本用法
              GridTile(
                header: Text('grid title'),
                child: Image.asset('assets/cat.jpeg'),
                footer: Text('grid footer'),
              ),
              Image.asset('assets/cat.jpeg'),
              GridTile(
                //GridTile按钮
                header: GridTileBar(
                  //标题
                  title: Text('header',style: TextStyle(color: Colors.red),),
                  //subtitle: Text('header',style: TextStyle(color: Colors.red),),
                  //前置图标
                  leading: Icon(Icons.print,color: Colors.green,),
                ),
                child: Image.asset('assets/cat.jpeg',fit: BoxFit.cover,),
                footer: GridTileBar(
                  //标题
                  title: Text('header',style: TextStyle(color: Colors.red),),
                  //subtitle: Text('header',style: TextStyle(color: Colors.red),),
                  //前置图标
                  leading: Icon(Icons.favorite,color: Colors.green,),
                ),
              ),
              Image.asset('assets/cat.jpeg'),
              //添加网格效果
              GridPaper(
                //网格颜色
                color: Colors.green,
                child: Image.asset('assets/cat.jpeg',fit: BoxFit.cover,),
              ),
              Image.asset('assets/cat.jpeg'),
              Image.asset('assets/cat.jpeg'),
              Image.asset('assets/cat.jpeg'),
              Image.asset('assets/cat.jpeg'),
              
              
            ],
          ),
        );
  }

}

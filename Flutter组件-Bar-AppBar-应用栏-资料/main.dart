import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('标题'),
          //左侧图标
          leading: Icon(Icons.home),
          //背景色
          backgroundColor: Colors.green,
          //居中标题
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.print),
              tooltip: '打印',
              onPressed: (){},
            ),
            //菜单按钮
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                //菜单项
                PopupMenuItem<String>(
                  value: 'friend',
                  child: Text('分享到朋友圈'),
                ),
                PopupMenuItem<String>(
                  value: 'download',
                  child: Text('下载到本地'),
                ),

              ],
            ),

          ],

        ),
        body: Container(),
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
//    return SizedBox(
//      height: 200.0,
//      child: AppBar(
//        title: Text('应用'),
//        //动作按钮
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.print),
//            tooltip: '打印',
//            onPressed: (){},
//          ),
//          IconButton(
//            icon: Icon(Icons.plus_one),
//            tooltip: '更多',
//            onPressed: (){},
//          ),
//          IconButton(
//            icon: Icon(Icons.share),
//            tooltip: '分享',
//            onPressed: (){},
//          ),
//        ],
//      ),
//    );
  
    return SizedBox(
      height: 500,
      child: AppBar(
        title: Text('标题'),
        //左侧图标
        leading: Icon(Icons.home),
        //背景色
        backgroundColor: Colors.green,
        //居中标题
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.print),
            tooltip: '打印',
            onPressed: (){},
          ),
          //菜单按钮
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              //菜单项
              PopupMenuItem<String>(
                value: 'friend',
                child: Text('分享到朋友圈'),
              ),
              PopupMenuItem<String>(
                value: 'download',
                child: Text('下载到本地'),
              ),

            ],
          ),

        ],

      ),
      
    );
  }
}

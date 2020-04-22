import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'BottomNavigationBar组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('BottomNavigationBar组件'),
        ),
        body: Container(
          width: 200.0,
          height: 500.0,
        ),
        bottomNavigationBar: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  DemoPageState createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  //当前选中的项索引
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
//    return BottomNavigationBar(
//      //底部按钮类型 固定样式
//      type: BottomNavigationBarType.fixed,
//      //按钮大小
//      iconSize: 24.0,
//      //点击里面的按钮回调的函数
//      onTap: _onItemTapped,
//      //当前选中项索引 高亮显示
//      currentIndex: _currentIndex,
//      //当类型为fixed时,选中项的颜色
//      fixedColor: Colors.red,
//      items: <BottomNavigationBarItem>[
//        BottomNavigationBarItem(title: Text('聊天'),icon: Icon(Icons.chat)),
//        BottomNavigationBarItem(title: Text('朋友圈'),icon: Icon(Icons.refresh)),
//        BottomNavigationBarItem(title: Text('我的'),icon: Icon(Icons.person)),
//      ],
//
//    );

    return BottomNavigationBar(
      //底部按钮类型 移位样式
      type: BottomNavigationBarType.shifting,
      //按钮大小
      iconSize: 24.0,
      //点击里面的按钮回调的函数
      onTap: _onItemTapped,
      //当前选中项索引 高亮显示
      currentIndex: _currentIndex,
      items: <BottomNavigationBarItem>[
        //底部导航按钮项
        BottomNavigationBarItem(
            title: Text(
              '聊天',
              style: TextStyle(color: Colors.red),
            ),
            icon: Icon(
              Icons.chat,
              color: Colors.red,
            )),
        BottomNavigationBarItem(
            title: Text(
              '朋友圈',
              style: TextStyle(color: Colors.red),
            ),
            icon: Icon(
              Icons.refresh,
              color: Colors.red,
            )),
        BottomNavigationBarItem(
          title: Text(
            '我的',
            style: TextStyle(color: Colors.red),
          ),
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

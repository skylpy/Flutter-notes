import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PopupMenuButton组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('PopupMenuButton组件'),
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

  void printSelectValue(String value){
    print(value);
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListTile(
        title: Text('弹出菜单按钮'),
        //弹出菜单按钮
        trailing: PopupMenuButton<String>(
          padding: EdgeInsets.zero,
          //选择回调
          onSelected: printSelectValue,
          //菜单项构造器
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            //弹出菜单项
            PopupMenuItem<String>(
              value: '锁定会议',
              child: ListTile(
                leading: Icon(Icons.lock),
                title: Text('锁定会议'),
              ),
            ),
            PopupMenuItem<String>(
              value: '挂断会议',
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('挂断会议'),
              ),
            ),
            //弹出菜单分隔线
            PopupMenuDivider(),
            PopupMenuItem<String>(
              value: '全部静音',
              child: ListTile(
                leading: Icon(Icons.volume_mute),
                title: Text('全部静音'),
              ),
            ),
          ],
        ),
      ),
    );

  }

}

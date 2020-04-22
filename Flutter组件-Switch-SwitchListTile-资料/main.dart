import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SwitchListTitle组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('SwitchListTitle组件'),
        ),
        body: DemoPage(),
      ),
    );
  }
}

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DemoPageState();
}

class DemoPageState extends State<DemoPage> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      //激活时的颜色
      activeColor: Colors.red,
      value: check,
      onChanged: (bool val){
        this.setState((){
          this.check = val;
        });
      },
      //标题
      title: const Text('是否打印'),
      //添加图标
      secondary: const Icon(Icons.print),
      //子标题
      subtitle: const Text('打印一张照片'),
    );
  }
}
